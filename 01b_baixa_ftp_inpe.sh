#!/bin/bash

# URL do FTP
FTP_URL="https://ftp.cptec.inpe.br/goes/goes16/goes16_web/glm_acumulado_nc/2024/"

# Diretório onde os arquivos serão baixados
DEST_DIR="./glm_acumulado_nc"

# Cria o diretório de destino se não existir
mkdir -p "$DEST_DIR"

# Baixa o conteúdo do FTP mantendo a estrutura de diretórios e incluindo os arquivos .nc
wget -r -np -nH --cut-dirs=4 -P "$DEST_DIR" -A ".nc" "$FTP_URL"

