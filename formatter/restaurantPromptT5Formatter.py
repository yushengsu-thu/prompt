from transformers import AutoTokenizer
from transformers import T5TokenizerFast
import torch
import json
import numpy as np
from .Basic import BasicFormatter

class restaurantPromptT5Formatter(BasicFormatter):
    def __init__(self, config, mode, *args, **params):
        self.config = config
        self.mode = mode
        self.max_len = config.getint("train", "max_len")
        self.prompt_len = config.getint("prompt", "prompt_len")
        self.prompt_num = config.getint("prompt", "prompt_num")
        self.mode = mode
        ##########
        self.model_name = config.get("model","model_base")
        if "T5" in self.model_name:
            try:
                self.tokenizer = T5TokenizerFast.from_pretrained("t5-base")
            except:
                self.tokenizer = T5TokenizerFast.from_pretrained("T5ForMaskedLM/t5-base")
        elif "Bert" in self.model_name:
            self.tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
        else:
            print("Have no matching in the formatter")
            exit()
        #self.tokenizer = AutoTokenizer.from_pretrained("roberta-base")
        ##########
        self.prompt_prefix = [- (i + 1) for i in range(self.prompt_len)]
        # self.prompt_middle = [- (i + 1 + self.prompt_len) for i in range(self.prompt_len)]

    def process(self, data, config, mode, *args, **params):
        inputx = []
        mask = []
        label = []
        max_len = self.max_len + 2 + self.prompt_num#+ self.prompt_len * 1 + 4

        for ins in data:
            sent = self.tokenizer.encode(ins["sent"], add_special_tokens = False)
            if len(sent) > self.max_len:
                sent = sent[:self.max_len]

            tokens = self.prompt_prefix + sent + self.tokenizer.encode("</s>", add_special_tokens=False)


            #<pad>==1
            tokens = tokens + [self.tokenizer.pad_token_id] * (max_len - len(tokens))

            mask.append([1] * len(tokens) + [0] * (max_len - len(tokens)))

            ##############################
            ##############################
            dict_ = {0:"negative", 1:"moderate", 2:"postive", 3:"conflict"}

            target = self.tokenizer.encode(dict_[ins["label"]], add_special_tokens=False)
            if len(target) >= self.target_len:
                target = target[:self.target_len-1]
            target = target + self.tokenizer.encode("</s>", add_special_tokens=False)

            target = target + [-100] * (self.target_len - len(target))


            if mode != "test":
                label.append(target)
            inputx.append(tokens)


        ret = {
            "inputx": torch.tensor(inputx, dtype=torch.long),
            "mask": torch.tensor(mask, dtype=torch.float),
            "label": torch.tensor(label, dtype=torch.long),
        }
        return ret
