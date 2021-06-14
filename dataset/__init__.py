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
    "STSB": STSBDataset

}