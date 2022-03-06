# kobana
Integration with api from kobana to payments in pix

## Referência
https://developers.kobana.com.br/v2.0/reference/get_v2-charge-pix

## Getting Started
$ git clone https://github.com/diegoshakan/kobana.git 

## Dependências
As dependências são todas padrões do Ruby, então não é necessário nenhuma instalação a não ser a chamada das libs já
requeridas no início do arquivo.

## Features
Fazendo funcionar o index e post para pagamentos em pix.
* Index: https://developers.kobana.com.br/v2.0/reference/get_v2-charge-pix
* Post: https://developers.kobana.com.br/v2.0/reference/post_v2-charge-pix

## Obersevações
* É necessário inserir o seu token (fazer cadastro no site); 
* Cadastrar um banco exemplo para receber o pix no [Sandbox Kobana](https://app-sandbox.kobana.com.br/users/sign_up);
* No mais, seguir o exemplo da documentação.

## Aprendizado
* Fiz esta primeira versão para poder ser uma espécie de protótipo para uma gem;
* Tentando separar as classes em módulos, e criando serviços para as chamadas de execução;
* Atentar para aprender a fazer testes com requisições, e integrações;
* Aplicar os princípios SOLID, ainda não está como desejado;
* Refatorar, porém com testes é possível refatorar com mais confiança;
* Estudei como fazer uma gem, pois só havia feito uma a nível de estudo. Desejo seguir com esse desafio e quem sabe poder 
compartilhar com a empresa.