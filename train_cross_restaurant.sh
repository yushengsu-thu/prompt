#mkdir RobertaForMaskedLM
gpus=5

############
#Sentiment
############

model_prompt="bert-base"

#restaurant
CUDA_VISIBLE_DEVICES=$gpus python3 train_cross.py --config config/crossPromptRoberta_restaurant.config \
    --gpu $gpus \
    --model_prompt $model_prompt
    #--checkpoint roberta-base \
    #--local_rank \
    #--do_test \
    #--comment \
    #--seed
