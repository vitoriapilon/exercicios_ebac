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

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Esquema do Cenário:Dados válidos
            Quando Eu digitar o <usuario>
            E a <senha>
            Então devo ser direcionado para a tela de checkout

            Esquema do Cenário:Dados inválidos
            Quando Eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | usuario                  | senha            | mensagem                     |
            | "bruna@ebac.com.br"      | "b2025na"        |                              |
            | "bruna@ebac.com.br"      | "senha inválida" | "Usuário ou senha inválidos" |
            | "diogosouza@ebac.com.br" | "Sd1998@"        |                              |
            | "diogosouza@ebac.com.br" | "senha inválida" | "Usuário ou senha inválidos" |


            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página checkout

            Esquema do Cenário: Validação dos dados obrigatórios
            Quando eu preencher o campo Nome com <nome>
            E preencher o campo Sobrenome com <sobrenome>
            E preencher o campo País com <pais>
            E preencher o campo Endereço com <endereco>
            E preencher o campo Cidade com <cidade>
            E preencher o campo CEP com <cep>
            E preencher o campo Telefone com <telefone>
            E preencher o campo Endereço de e-mail com <email>
            E clicar no botão "Finalizar compra"
            Então deve exibir a <mensagem>

            Exemplos:
            | nome    | sobrenome | pais     | endereco             | cidade    | cep        | telefone    | email               | mensagem                          |
            | "Bruna" | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | "Limeira" | "13480405" | "982343536" | "bruna@ebac.com.br" | "Cadastro realizado com sucesso"  |
            | ""      | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | "Limeira" | "13480405" | "982343536" | "bruna@ebac.com.br" | "O campo Nome é obrigatório"      |
            | "Bruna" | ""        | "Brasil" | "Rua Guararapes, 15" | "Limeira" | "13480405" | "982343536" | "bruna@ebac.com.br" | "O campo Sobrenome é obrigatório" |
            | "Bruna" | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | "Limeira" | "13480405" | "982343536" | "bruna.com"         | "Formato de e-mail inválido"      |
            | "Bruna" | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | "Limeira" | "13480405" | "982343536" | ""                  | "O campo e-mail é obrigatório"    |
            | "Bruna" | "Vieira"  | "Brasil" | ""                   | "Limeira" | "13480405" | "982343536" | "bruna@ebac.com.br" | "O campo Endereço é obrigatório"  |
            | "Bruna" | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | ""        | "13480405" | "982343536" | "bruna@ebac.com.br" | "O campo Cidade é obrigatório"    |
            | "Bruna" | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | "Limeira" | ""         | "982343536" | "bruna@ebac.com.br" | "O campo CEP é obrigatório"       |
            | "Bruna" | "Vieira"  | "Brasil" | "Rua Guararapes, 15" | "Limeira" | "13480405" | ""          | "bruna@ebac.com.br" | "O campo Telefone é obrigatório"  |