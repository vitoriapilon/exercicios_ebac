            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página checkout

            Esquema do Cenário: Validação dos dados obrigatórios
            Quando eu preencher o campo <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
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