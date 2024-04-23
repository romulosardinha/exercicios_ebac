#language: pt

Funcionalidade: checkout

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra
Critérios de Aceitação:

1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 

Obs. Usar Tabela de exemplo de dados (Esquema do Cenário )

Contexto: 
Dado que estou na página de cadastro

Cenário: Cadastro com sucesso
Quando digitar os dados <Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <cep>, <Telefone>, <E-mail> e clicar em cadastrar
Então devo ser cadastrado com sucesso


Exemplos:
| Nome | Sobrenome | País | Endereço | Cidade | cep | Telefone | E-mail |
| "Maria" | "Silva" | "Brasil" | "Rua 1" | "São Paulo" | "12345-678" | "55999999999" | "maria@gmail.com" |
| "João" | "Santos" | "Brasil" | "Rua 2" | "São Paulo" | "12345-678" | "55999999999" | "joao@gmail.com" |
| "Ana" | "Oliveira" | "Brasil" | "Rua 3" | "São Paulo" | "12345-678" | "55999999999" | "ana@gmail.com" |


Cenário: Cadastro falta de dados
Quando deixar de preencher algum campo obrigatório ( ou algum campo obrigatório marcado com asteriscos)
Então devo ver a mensagem de alerta "Preencha todos os campos obrigatórios"

Exemplos:
| Nome* | Sobrenome* | País* | Endereço* | Cidade* | cep* | Telefone* | E-mail* |
| "" | "Oliveira" | "Brasil" | "Rua 3" | "São Paulo" | "12345-678" | "55999999999" | "ana@gmail.com" |
| "Ana" | "" | "Brasil" | "Rua 3" | "São Paulo" | "12345-678" | "55999999999" | "ana@gmail.com" |
| "Ana" | "Oliveira" | "" | "Rua 3" | "São Paulo" | "12345-678" | "55999999999" | "ana@gmail.com" |
| "Ana" | "Oliveira" | "Brasil" | "" | "São Paulo" | "12345-678" | "55999999999" | "ana@gmail.com" |
| "João" | "Santos" | "Brasil" | "Rua 2" | "" | "12345-678" | "55999999999" | "joao@gmail.com" |
| "Ana" | "Oliveira" | "Brasil" | "Rua 3" | "São Paulo" | "" | "55999999999" | "ana@gmail.com" |
| "Ana" | "Oliveira" | "Brasil" | "Rua 3" | "São Paulo" | "12345-678" | "" | "ana@gmail.com" |
| "Maria" | "Silva" | "Brasil" | "Rua 1" | "São Paulo" | "12345-678" | "55999999999" | "" |