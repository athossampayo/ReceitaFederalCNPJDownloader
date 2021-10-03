#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

urls=($(curl --silent https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj | grep -Po '(?<=href=")[^"]*CNPJ[^"]*(\.zip){1}'))
date_last_extraction=$(curl --silent https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj | grep -Po '(?<=\<span>Data da última extração:\s).*[^\<\/span\>]')
date_last_extraction=${date_last_extraction//\//-}

mkdir -p "${date_last_extraction}"
cd "${date_last_extraction}"


for i in "${urls[@]}"
do
    # echo "$i"
    declare filename=$(echo "$i" | rev | cut -d '/' -f '1' | rev)
    # echo $filename
    eval "$SCRIPT_DIR/aria2-1.36.0/src/aria2c -x 16 -s 20 --max-tries=0 -k 1M $i"
done