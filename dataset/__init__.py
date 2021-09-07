from dataset.JsonFromFiles import JsonFromFilesDataset
from .RTEDataset import RTEDataset
from .SST2Dataset import SST2Dataset
from .WikiREDataset import WikiREDataset
from .SQuADDataset import SQuADDataset
from .CoLADataset import CoLADataset
from .MRPCDataset import MRPCDataset
from .QQPDataset import QQPDataset
from .MNLIDataset import MNLIDataset
from .QNLIDataset import QNLIDataset
from .WNLIDataset import WNLIDataset
from .STSBDataset import STSBDataset
from .laptopDataset import laptopDataset
from .restaurantDataset import restaurantDataset
from .IMDBDataset import IMDBDataset
from .projectorDataset import projectorDataset
from .crossDataset import crossDataset
from .mutiGPU_STSBDataset import mutiGPU_STSBDataset
from .agnewsDataset import agnewsDataset
from .cs_wikiDataset import cs_wikiDataset
from .sciercDataset import sciercDataset
from .snliDataset import snliDataset
from .anliDataset import anliDataset
from .recastfactualityDataset import recastfactualityDataset
from .tweetevalsentimentDataset import tweetevalsentimentDataset
from .movierationalesDataset import movierationalesDataset
from .emobankarousalDataset import emobankarousalDataset
from .persuasivenessrelevanceDataset import persuasivenessrelevanceDataset
from .persuasivenessspecificityDataset import persuasivenessspecificityDataset
from .emobankdominanceDataset import emobankdominanceDataset
from .squinkyimplicatureDataset import squinkyimplicatureDataset
from .squinkyformalityDataset import squinkyformalityDataset
from .activate_neuronDataset import activate_neuronDataset


dataset_list = {
    "JsonFromFiles": JsonFromFilesDataset,
    "RTE": RTEDataset,
    "SST2": SST2Dataset,
    "RE": WikiREDataset,
    "SQuAD": SQuADDataset,
    "CoLA": CoLADataset,
    "MRPC": MRPCDataset,
    "QQP": QQPDataset,
    "MNLI": MNLIDataset,
    "QNLI": QNLIDataset,
    "WNLI": WNLIDataset,
    "STSB": STSBDataset,
    "laptop": laptopDataset,
    "restaurant": restaurantDataset,
    "IMDB": IMDBDataset,
    "projector": projectorDataset,
    "mutiGPU_STSB": mutiGPU_STSBDataset,
    "cross": crossDataset,
    "agnews": agnewsDataset,
    "cs_wiki": cs_wikiDataset,
    "scierc": sciercDataset,
    "snli": snliDataset,
    "anli": anliDataset,
    "recastfactuality": recastfactualityDataset,
    "tweetevalsentiment": tweetevalsentimentDataset,
    "movierationales": movierationalesDataset,
    "emobankarousal": emobankarousalDataset,
    "persuasivenessrelevance": persuasivenessrelevanceDataset,
    "persuasivenessspecificity": persuasivenessspecificityDataset,
    "emobankdominance": emobankdominanceDataset,
    "squinkyimplicature": squinkyimplicatureDataset,
    "squinkyformality": squinkyformalityDataset,
    "activate_neuron": activate_neuronDataset,
}
