# language: pt
Funcionalidade: Configuração de Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios de Aceitação:
1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
2 – Deve permitir apenas 10 produtos por venda
3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

  Contexto: 
    Dado que estou logado na EBAC-SHOP como cliente
    E estou na página de um produto que desejo comprar

  Cenário: Configuração e Adição de Produto ao Carrinho
    Quando eu selecionar a cor <cor>
    E selecionar o tamanho <tamanho>
    E escolher a quantidade <quantidade>
    E clicar no botão "Adicionar ao Carrinho"
    Então o produto deve ser adicionado ao meu carrinho de compras

    Exemplos: 
      | cor        | tamanho | quantidade |
      | "Azul"     | "P"     | "1"        |
      | "Vermelho" | "M"     | "2"        |
      | "Verde"    | "G"     | "3"        |
      | "Amarelo"  | "GG"    | "4"        |
      | "Preto"    | "P"     | "5"        |
      | "Branco"   | "M"     | "6"        |
      | "Rosa"     | "G"     | "7"        |
      | "Lilás"    | "GG"    | "8"        |
      | "Cinza"    | "P"     | "9"        |
      | "Marrom"   | "M"     | "10"       |

  Cenário: Configuração e Adição de mais de 10 Produtos ao Carrinho
    Quando eu selecionar a cor Azul
    E selecionar o tamanho M
    E escolher a quantidade 11
    E clicar no botão "Adicionar ao Carrinho"
    Então o sistema deve exibir uma mensagem de erro informando que o limite de produtos por venda foi atingido

  Cenário: Limpar Configuração do Produto
    Quando eu selecionar a cor Azul
    E selecionar o tamanho M
    E escolher a quantidade 1
    E clicar no botão "Limpar"
    Então a cor, tamanho e quantidade devem voltar ao estado original
