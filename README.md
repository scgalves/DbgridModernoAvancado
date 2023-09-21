# DbgridModernoAvancado
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/scgalves/DbgridModernoAvancado/blob/main/LICENSE)

# Sobre o projeto
Projeto em Delphi demonstrando uma DBGrid padrão da paleta de componentes, com um layout moderno e vários recursos.

# Recursos
## Ordenação crescente ou descrescente dos registros
Ao clicar pela primeira vez no título de uma coluna:
* O título muda de cor, para identificar que a coluna foi selecionada.
* Os registros serão ordenados pela coluna selecionada, de forma **Crescente**.

Ao clicar pela segunda vez na mesma coluna:
* A cor da fonte do título da coluna muda de cor, para identificar que a coluna foi novamente selecionada.
* Os registros serão ordenadas pela coluna selecionada, de forma **Descrescente**.

Ao clicar em um outro título de coluna, o título da coluna anteriormente selecionada terá suas cores restauradas.

## Linhas zebradas
Cada linha tem uma cor diferente, para melhorar a visualização dos registros.

## Maior altura das linhas
A altura das linhas foi aumentada, para melhorar a visualização dos registros.

## Linha selecionada em destaque
Ao selecionar uma linha, todos os campos da linha ficam em **negrito** e a linha fica num tom de cor um pouco mais escuro.

# Layout
[...]

# Tecnologia
Delphi versão 11.3 CE Alexandria. Um componente ClientDataSet faz acesso aos dados contidos em um arquivo XML e os exibe na DBGrid, simulando um acesso aos dados de uma tabela de um banco de dados. O projeto só foi testado no Delphi 11.3; não é possível saber como seria o comportamento em uma versão diferente.

# Referências
Vários dos recursos desta DBGrid foram obtidos em vários sites, com algumas adaptações minhas. Esses recursos foram largamente divulgados há mais de 10 anos por vários programadores e podem ser encontrados na internet sem maiores dificuldades.

# Autor

Sérgio Carlos Guimarães Alves

scgalves@gmail.com

https://www.linkedin.com/in/sergiocarlosguimaresalves/


