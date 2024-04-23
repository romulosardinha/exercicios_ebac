#language: pt

Funcionalidade: login

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Critérios de Aceitação:
1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Contexto:
Dado que estou na página de login

Cenário: Login com sucesso
Quando eu digitar o usuário <usuario>, a senha <senha> e clicar em entrar
Então devo ser direcionado para a tela de checkout

Exemplos:
| usuario | senha |
| "user1"   | "123"   |
| "user2"   | "456"   |
| "user3"   | "789"   |

Cenário: Login com falha
Quando eu digitar o usuário <usuario>, a senha <senha>, e clicar em entrar
Então devo visualizar a mensagem de alerta “Usuário ou senha inválidos”

Exemplos:
| usuario | senha |
| "user4"   | "123"   |
| "user5"   | "456"   |
| "user6"   | "789"   |
