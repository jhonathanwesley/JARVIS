# Usando o JARVIS

## Index

> EXECUTANDO LOCALMENTE:
1. [Estudo de Caso Python](#estudo-de-caso-1---dsa-ai-coder---criando-seu-assistente-de-programação-python-em-python)

> EXECUTANDO EM SERVIDOR:
2. [Usando o `Dockerfile`](#usando-o-dockerfile)
3. [Encaminhanmento de Portas com `Ngrok` - ( Port Forwarding )](#encaminhanmento-de-portas-com-ngrok---port-forwarding)

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

## App Streamlit sendo servido usando imagem `docker`

> Build da imagem no: `Dockerfile`

1. `docker build -t jarvis-app .`

2. `docker run -d -p 8080:8080 jarvis-app`

## Encaminhanmento de Portas com `Ngrok` - Port Forwarding

> Congfiguração e uso do ngrok para encaminhamento de portas:

1. Instalação na máquina linux:
```bash
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc   | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null   && echo "deb https://ngrok-agent.s3.amazonaws.com bookworm main"   | sudo tee /etc/apt/sources.list.d/ngrok.list   && sudo apt update   && sudo apt install ngrok
```

2. Configuração do Authentication Token:

```bash
ngrok config add-authtoken <your-token-from-ngrok>
```

- Exemplo:

```bash
ngrok config add-authtoken abcd123456789
```

3. Ativação:

```bash
ngok http <port>
```

- Exemplo:

```bash
ngok http 80
```

4. Adicionando Script para executar o ngrok no `~/.bashrc`:

```bash
echo <"~/nome_script.sh"> >> ~/.bashrc
```

- Exemplo

```bash
echo "~/start-ngrok.sh" >> ~/.bashrc
```

> local do script:

- [Bash Script do ngrok](./start-ngrok.sh)

5. Visualizando o link gerado pelo ngrok e os logs:

```bash
cat ~/ngrok.log
```
