#!/bin/bash

TARGET_DIR="/home/aluno/diretorio_temporario"

DAYS_UNUSED=30

if [ -d "$TARGET_DIR" ]; then
  find "$TARGET_DIR" -type f -atime +$DAYS_UNUSED -exec rm -f {} \;
  
  echo "Limpeza concluída com sucesso. Arquivos não acessados nos últimos $DAYS_UNUSED dias foram deletados."
else
  echo "Erro: Diretório $TARGET_DIR não encontrado."
fi
