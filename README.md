# ReceitaFederalCNPJDownloader

Simple script to make downloading Brazillian Receita Federal CNPJ Dataset monthly updates easier

![!shell-script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white) &nbsp;
![!ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

## Contacts Details

Feel free to contact me by any of this means:

[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/athos-sampayo-70a0001b1/)](https://www.linkedin.com/in/athos-sampayo-70a0001b1/)
[![Gmail Badge](https://img.shields.io/badge/-Email-c14438?style=flat&logo=Gmail&logoColor=white&link=mailto:athos.s.sampayo@gmail.com)](mailto:athos.s.sampayo@gmail.com)
[![GitHub](https://img.shields.io/badge/-GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/athossampayo)

## Summary

This repository is meant to ease the downloading of Receita Federal CNPJ Dataset (current located on [Dados Públicos CNPJ](https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj)). As known, Receita's server is very unstable and often makes download connections die or timeout, so to handle this, was used [aria2 download utility](https://aria2.github.io/) with some arguments tweaks for this usage.

## Installation

:heavy_exclamation_mark: This repository depends on aria2 installation. Right now, it is built to be UNIX only, but should receive future updates to allow Windows usage. :heavy_exclamation_mark:

To be able to use the first time, follow the instructions on your Terminal:

1 - Clone the repository:

    git clone https://github.com/athossampayo/ReceitaFederalCNPJDownloader.git

2 - Access directory:

    cd ReceitaFederalCNPJDownloader

3 - Run aria2 installer:

    ./aria2-installer.sh

## Usage

After letting the aria2 installer run, we are good to go:

4 - Run the download script and wait till it completed (will take some time):

    ./download_receita_cnpj_dataset.sh

PS: Script will create an output directory with the last dataset extraction date. Example: /11-09-2021

So, if needed, it's possible to make this script run every month to get updated date or so.

## Contributing

Feel free to open any [Issues](https://github.com/athossampayo/ReceitaFederalCNPJDownloader/issues) or open a [Pull Request](https://github.com/athossampayo/ReceitaFederalCNPJDownloader/pulls)
