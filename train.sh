mkdir RobertaForMaskedLM


#SST-2
'''
python3 train.py --config config/SST2PromptRoberta.config \
    --gpu 0,1,2,3 \
    #--checkpoint roberta-base \
    #--local_rank \
    #--do_test \
    #--comment \
    #--seed
'''

#RET
python3 train.py --config config/RTEPromptRoberta.config \
    --gpu 4 \
