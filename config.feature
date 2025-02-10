#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página da EBAC-SHOP


Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu selecionar um produto sem selecionar a cor, tamanho e quantidade
E clicar no botão "comprar"
Então deve exibir uma mensagem de que a seleção é obrigatória "Por favor, selecione a cor, tamanho e quantidade"

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu selecionar um produto com a quantidade maior que 10 produtos
E clicar no botão "comprar"
Então deve exibir uma mensagem de quantidade máxima atingida "Por favor, selecione no máximo 10 produtos"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu selecionar um produto selecionando também a cor, tamanho e quantidade
E clicar no botão "Limpar"
Então a seleção deve ser removida e voltar ao estado original
