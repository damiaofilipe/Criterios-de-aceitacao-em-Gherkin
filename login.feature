            #language: pt

            Funcionalidade: Escolha dos produtos no site EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que acesse a página EBAC-SHOP


            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu clicar no produto desejado
            E clicar no botão "adicionar ao carrinho"
            Então deve solicitar a escolha de cor, tamanho e quantidade do produto desejado

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando for finalizar a compra
            E tiver mais de 10 produtos na compra
            Então exibir a mensagem de alerta: "Permitido apenas 10 produtos por compra"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando for finalizar a compra
            E tiver até 10 produtos na compra
            Então encaminhar para a página de pagamento

            Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando eu clicar no botão "limpar" na aba carrinho
            Então deve voltar ao estado original.



            Funcionalidade: Autentificação do login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Autentificação válida
            Dado que eu acesse a pagina de login do EBAC-SHOP
            Quando eu digitar o usuário "pedro@gmail.com.br"
            E senha "113pedro"
            Então sera direcionado para a tela de checkout

            Esquema do Cenário: Email ou senha inválidos
            Dado que eu acesse a pagina de login do EBAC-SHOP
            Quando eu digitar <usuario>
            E a <senha>
            Então deve aparecer a <mensagem> de alerta

            Exemplos:
            | usuario                  | Senha      | mensagem                   |
            | "joao@outlook.com.br"    | "joao123"  | "Email ou senha inválidos" |
            | "mariap@gmail.com.br"    | "Mari2021" | "Email ou senha inválidos" |
            | "ricardo@hotmail.com.br" | "R21524"   | "Email ou senha inválidos" |



            Funcionalidade: Concluir cadastro no EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que acesse a página EBAC-SHOP

            Cenário: Tela de cadastro
            Quando for relizar o cadastro deve ser preenchido os dados obrigatórios, marcado com asteriscos
            Então ser direcionado para finalização da compra

            Esquema do Cenário: Email inválido
            Quando eu digitar <email>
            Então deve aparecer a <mensagem> de alerta

            Exemplos:
            | usuario                 | mensagem          |
            | "marlene@email.com.br"  | "Email inválidos" |
            | "sergio-4@gail.com"     | "Email inválidos" |
            | "ricardo@hotmal.com.br" | "Email inválidos" |


            Cenário: Finalizar cadastro
            Quando for estiver preenchendo o cadastro
            E tiber campos vazios
            Então deve exibir mensagem de alerta "Por gentileza, preencher todos os campos"






