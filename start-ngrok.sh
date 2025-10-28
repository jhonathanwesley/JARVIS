#!/bin/bash

# Verifica se o ngrok já está rodando
if pgrep -x "ngrok" > /dev/null; then
    echo "Ngrok já está rodando."
else
    # Inicia o ngrok em segundo plano
    nohup ngrok http 8080 --log=stdout > ~/ngrok.log 2>&1 &
    echo "Ngrok iniciado em segundo plano. Logs em ~/ngrok.log"
fi
