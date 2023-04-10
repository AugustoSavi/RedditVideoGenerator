FROM ubuntu:latest

# atualiza a lista de pacotes do Ubuntu
RUN apt-get update

# instala o Python3 e algumas ferramentas de desenvolvimento
RUN apt-get install -y python3 python3-dev python3-pip build-essential

# instala o FFMPEG e algumas bibliotecas adicionais necessárias
RUN apt-get install -y ffmpeg libsm6 libxext6

# instala a biblioteca libespeak.so.1
RUN apt-get install -y libespeak1

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .