
# Prompt Analysis

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

![](https://img.shields.io/github/stars/pandao/editor.md.svg) ![](https://img.shields.io/github/forks/pandao/editor.md.svg) ![](https://img.shields.io/github/tag/pandao/editor.md.svg) ![](https://img.shields.io/github/release/pandao/editor.md.svg) ![](https://img.shields.io/github/issues/pandao/editor.md.svg) ![](https://img.shields.io/bower/v/editor.md.svg)


Note
=============
#### Environment Setup
```
bash requirement.sh
```


#### Training
```
bash train.sh
```


#### Extract Prompt Embedding
```
bash create_prompt_emb.sh
```

### Rank Similiarty
```
rank_task_sim.py
```



To-Do
=============
Model Size and Type

|   |  BASE | LARGE  |
| ------------ | ------------ | ------------ |
| RoBERTa  |  Done  |  Done  |
| T-5  | -  |  - |
| GPT  |  - | -  |   |


---

Downstream Dataset
```
- GLUE:  MNLI, QNLI, MRPC, QQP, RTE, SST2, WNLI, STSB, ~~CoLA~~
- QA: ~~SQUAD~~
- RE: Fewrel
- GCAE: laptop, restaurant
```

Task:
- Sentiment Classification: SST2, laptop, restaurant
- Paraphrase: MRPC,  QQP
- NLI: MNLI, RTE, WNLI(Coreference)
- RE: Fewrel

- Sentence Similiarity: STSB
- Other: QNLI(QA)


Domain:
- misc.: STSB, MNLI
- movie: SST2
- news: MRPC, RTE
- social question: QQP
- Wiki: QNLI, Fewrel, RTE
- Fiction: WNLI
- reataurant: restaurant
- computer: laptop


---
Finding:
- 1. [exp_results/exp_optimize_prompt_to_task_direction.txt]: Prompt emb can be seperated by prompt tuning. (Observe epochs from 1 to 15)
- 2. [exp_results/exp_task_radomseed.txt]: Prompt emb in different random seed 

- Conclusion: Apply EuclideanDistances to measures similiarty is more obvious. 

---
Performance:
- laptop: 78.6%
- restaurant: 76% 
- SST2: 91.2%

---
- Similiarty:

Table:

