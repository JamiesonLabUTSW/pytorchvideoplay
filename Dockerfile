FROM nvcr.io/nvidia/pytorch:21.04-py3

RUN conda install -c conda-forge -c fvcore -c iopath fvcore=0.1.4 iopath

RUN python -m pip install pytorchvideo==0.1.0

CMD python -c 'import torch; print(torch.cuda.is_available())'
