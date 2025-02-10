            #language: pt

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


