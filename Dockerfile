# Imagem base com Python 3.13
FROM python:3.13-slim

# Definição da pasta de trabalho dentro do contêiner
WORKDIR /app

# Copiando os arquivos do repositório para a pasta /app no contêiner
COPY . /app

# Instalação do Miniconda para criar o ambiente virtual
RUN apt-get update && apt-get install -y wget && \
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda && \
    rm Miniconda3-latest-Linux-x86_64.sh

# Adição do Conda ao PATH
ENV PATH="/miniconda/bin:$PATH"

# Aceite dos Termos de Serviço para os canais padrão do Anaconda
RUN conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && \
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Criação e ativação do ambiente virtual com Conda
RUN conda create --name envjarvis python=3.13 && \
    echo "source activate envjarvis" > ~/.bashrc

# Ativação do ambiente virtual e instalação das dependências
RUN /bin/bash -c "source activate envjarvis && pip install --upgrade pip && pip install -r requirements.txt"

# Expõe a porta 8080 para o Streamlit
EXPOSE 8080

# Comando para executar o aplicativo Streamlit
CMD ["/bin/bash", "-c", "source activate envjarvis && streamlit run JARVIS_AI_Coder.py --server.port=8080"]
