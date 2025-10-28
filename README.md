# Usando o JARVIS

## Index

[Estudo de Caso 1 - DSA AI Coder - Criando Seu Assistente de Programação Python, em Python](#)

## Estudo de Caso 1 - DSA AI Coder - Criando Seu Assistente de Programação Python, em Python

> Abra o terminal ou prompt de comando, navegue até a pasta com os arquivos e execute o comando abaixo para criar um ambiente virtual:

`conda create --name jarvisenv python=3.13`

> Ative o ambiente:

`conda activate jarvisenv`

> Instale o pip e as dependências:

```
conda install pip
pip install -r requirements.txt 
```

> Execute a app:

`streamlit run JARVIS_AI_Coder.py`

> Exemplos de uso do assistente:

- Como crio um hello world em Python?
- Qual a sintaxe de um loop em Python?
- Como eu uso a função map em Python? Me dê um exemplo com lambda.

> Use os comandos abaixo para desativar o ambiente virtual e remover o ambiente (opcional):

```
conda deactivate
conda remove --name jarvisenv --all
```

---

## Usando o `Dockerfile`

1. `docker build -t jarvis-app .`

2. `docker run -d -p 8080:8080 jarvis-app`
