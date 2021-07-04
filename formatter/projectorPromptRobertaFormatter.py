from transformers import AutoTokenizer
import torch
import json
import numpy as np
from .Basic import BasicFormatter

class projectorPromptRobertaFormatter(BasicFormatter):
    def __init__(self, config, mode, *args, **params):
        self.config = config
        self.mode = mode
        self.max_len = config.getint("train", "max_len")
        self.prompt_len = config.getint("prompt", "prompt_len")
        self.prompt_num = config.getint("prompt", "prompt_num")
        self.mode = mode
        self.tokenizer = AutoTokenizer.from_pretrained("roberta-base")
        self.prompt_prefix = [- (i + 1) for i in range(self.prompt_len)]
        # self.prompt_middle = [- (i + 1 + self.prompt_len) for i in range(self.prompt_len)]

    def process(self, data, config, mode, *args, **params):
        inputx = []
        mask = []
        label = []
        max_len = self.max_len + 3 + self.prompt_num#+ self.prompt_len * 1 + 4

        print("DATSET MAP:")
        #print(set([l["dataset"] for l in data]))
        #print("---")
        #print(list(set([l["dataset"] for l in data])))
        #print("---")
        #print(list(set([l["dataset"] for l in data])).sort())
        l = list(set([l["dataset"] for l in data]))
        #print(l)
        l.sort()
        #print(l)
        #print("---")
        #exit()
        DATSSET_MAP = {name:id for id, name in enumerate(l)}
        print(DATSSET_MAP)
        #print({k for k in list(set([l["dataset"] for l in data])).sort()})
        #print("---")
        #= for data in list({l["dataset"] for l in data}).sort()
        #exit()

        task_name_list=[]
        for ins in data:
            task_name_list.append(DATSSET_MAP[ins["dataset"]])
            sent1 = self.tokenizer.encode(ins["sent1"], add_special_tokens = False)
            try:
                sent2 = self.tokenizer.encode(ins["sent2"], add_special_tokens=False)
                tokens = self.prompt_prefix + [self.tokenizer.cls_token_id] + sent1 + [self.tokenizer.sep_token_id] + sent2 + [self.tokenizer.sep_token_id]
            except:
                tokens = self.prompt_prefix + [self.tokenizer.cls_token_id] + sent1 + [self.tokenizer.sep_token_id]

            if len(tokens) > max_len:
                tokens = tokens[:max_len - 1]
                tokens = tokens + [self.tokenizer.sep_token_id]
            mask.append([1] * len(tokens) + [0] * (max_len - len(tokens)))
            tokens = tokens + [self.tokenizer.pad_token_id] * (max_len - len(tokens))
            if mode != "test":
                label.append(ins["label"])
            inputx.append(tokens)

        ret = {
            "inputx": torch.tensor(inputx, dtype=torch.long),
            "mask": torch.tensor(mask, dtype=torch.float),
            "label": torch.tensor(label, dtype=torch.long),
            "task_name": torch.tensor(task_name_list, dtype=torch.long),
        }
        return ret
