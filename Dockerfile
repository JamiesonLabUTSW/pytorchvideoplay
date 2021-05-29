FROM nvcr.io/nvidia/pytorch:21.04-py3

RUN conda install -c conda-forge -c fvcore -c iopath fvcore=0.1.4 iopath

RUN python -m pip install\
    pytorchvideo==0.1.0\ 
    wandb==0.10.31\
    seaborn==0.11.1\
    omegaconf==2.0.6\
    black==21.5b1\
    isort==5.8.0\
    mypy==0.812\
    flake8==3.9.2\
    pytest==6.2.4\
    pytest-cov==2.12.0

CMD python -c 'import torch; print(torch.cuda.is_available())'
