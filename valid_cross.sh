#CUDA_VISIBLE_DEVICES=$gpus

gpus=5

#MODEL_PROMPT="Roberta-base"
MODEL_PROMPT="Bert-base"
#MODEL_PROMPT="Random"


############
#Sentiment
############
#restaurant
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/restaurantPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/restaurantPromptRoberta/15.pkl \
    --replacing_prompt restaurantPromptBert



#laptop
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/laptopPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/laptopPromptRoberta/15.pkl \
    --replacing_prompt laptopPromptBert



#IMDB
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/IMDBPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/IMDBPromptRoberta/15.pkl \
    --replacing_prompt IMDBPromptBert


#SST-2
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/SST2PromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/SST2PromptRoberta/15.pkl \
    --replacing_prompt SST2PromptBert


############
#Paraphrase
############

#MRPC
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/MRPCPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/MRPCPromptRoberta/15.pkl \
    --replacing_prompt MRPCPromptBert

#QQP
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/QQPPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/QQPPromptRoberta/15.pkl \
    --replacing_prompt QQPPromptBert


############
#NLI
############

#RTE
#Remove prompts between two sentences
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/RTEPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/RTEPromptRoberta/15.pkl \
    --replacing_prompt RTEPromptBert

#MNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/MNLIPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/MNLIPromptRoberta/15.pkl \
    --replacing_prompt MNLIPromptBert



#WNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/WNLIPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/WNLIPromptRoberta/15.pkl \
    --replacing_prompt WNLIPromptBert



############
#RE
############
#RE
'''
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/REPrompt.config \
    --gpu $gpus \
    --checkpoint model/REPrompt/15.pkl \
    --replacing_prompt \
    --task_transfer_projector
'''


############
#Other
############


#QNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/QNLIPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/QNLIPromptRoberta/15.pkl \
    --replacing_prompt QNLIPromptBert


CUDA_VISIBLE_DEVICES=$gpus python3 valid.py --config config/STSBPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/STSBPromptRoberta/15.pkl \
    --replacing_prompt STSBPromptBert



'''
############
#Sentiment
############
#restaurant
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/restaurantPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/restaurantPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT



#laptop
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/laptopPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/laptopPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT



#IMDB
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/IMDBPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/IMDBPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT


#SST-2
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/SST2PromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/SST2PromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT


############
#Paraphrase
############

#MRPC
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/MRPCPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/MRPCPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT

#QQP
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/QQPPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/QQPPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT


############
#NLI
############

#RTE
#Remove prompts between two sentences
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/RTEPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/RTEPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT

#MNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/MNLIPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/MNLIPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT



#WNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/WNLIPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/WNLIPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT



############
#RE
############
#RE
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/REPrompt.config \
    --gpu $gpus \
    --checkpoint model/REPrompt/15.pkl \
    --model_prompt $MODEL_PROMPT


############
#Other
############


#QNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/QNLIPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/QNLIPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT


CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/STSBPromptRoberta.config \
    --gpu $gpus \
    --checkpoint model/STSBPromptRoberta/15.pkl \
    --model_prompt $MODEL_PROMPT
'''


'''
################################
###########BERT#################
################################


############
#Sentiment
############
#restaurant
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/restaurantPromptBert.config \
    --gpu $gpus \
    --checkpoint model/restaurantPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT



#laptop
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/laptopPromptBert.config \
    --gpu $gpus \
    --checkpoint model/laptopPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT




#IMDB
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/IMDBPromptBert.config \
    --gpu $gpus \
    --checkpoint model/IMDBPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT




#SST-2
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/SST2PromptBert.config \
    --gpu $gpus \
    --checkpoint model/SST2PromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT




############
#Paraphrase
############

#MRPC
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/MRPCPromptBert.config \
    --gpu $gpus \
    --checkpoint model/MRPCPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT


#QQP
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/QQPPromptBert.config \
    --gpu $gpus \
    --checkpoint model/QQPPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT


############
#NLI
############

#RTE
#Remove prompts between two sentences
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/RTEPromptBert.config \
    --gpu $gpus \
    --checkpoint model/RTEPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT


#MNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/MNLIPromptBert.config \
    --gpu $gpus \
    --checkpoint model/MNLIPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT




#WNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/WNLIPromptBert.config \
    --gpu $gpus \
    --checkpoint model/WNLIPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT




############
#RE
############
#RE
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/REPrompt.config \
    --gpu $gpus \
    --checkpoint model/REPrompt/15.pkl \


############
#Other
############


#QNLI
CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/QNLIPromptBert.config \
    --gpu $gpus \
    --checkpoint model/QNLIPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT



CUDA_VISIBLE_DEVICES=$gpus python3 valid_cross.py --config config/STSBPromptBert.config \
    --gpu $gpus \
    --checkpoint model/STSBPromptBert/15.pkl \
    --model_prompt $MODEL_PROMPT
'''




