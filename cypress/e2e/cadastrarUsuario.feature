# language: pt

Funcionalidade: Cadastrar usuário
Como uma pessoa qualquer
Desejo me cadastrar no sistema
Para conseguir avaliar filmes

Contexto: Deve acessar a funcionalidade de cadastro
Dado que acessei a tela de cadastro de usuário

Cenário: Deve ser possível cadastrar um usuário informando dados válidos nos campos obrigatórios
Quando preencher o campo nome
E preencher o campo e-mail
E preencher o campo senha
E preencher o campo confirmar senha
E acessar a função cadastrar
Então o sistema exibirá o alerta informando que o cadastro foi realizado com sucesso 

Cenário: Não deve ser possível cadastrar um usuário com um e-mail já cadastrado por outro usuário
Quando preencher o campo nome 
E preencher o campo e-mail com um e-mail já utilizado
E preencher o campo senha
E preencher o campo confirmar senha
E acessar a função cadastrar
Então o sistema exibirá o alerta de erro "E-mail já cadastrado. Utilize outro e-mail"
E o cadastro do usuário não será realizado com sucesso

Cenário: Novos usuarios devem nascer com o tipo 0, que é o tipo de usuário comum
Quando preencher os campos obrigatórios para cadastro com dados válidos
E acessar a função cadastrar
E o cadastro do usuário ser realizado com sucesso
Então o usuário será do tipo 0, usuário comum

Cenário: Devem exisitir 3 tipos de usuários: 0 = comum, 1 = admin e 2 = crítico
Quando preencher os campos obrigatórios para cadastro com dados válidos
E acessar a função cadastrar
E o cadastro do usuário ser realizado com sucesso
E acessar a funçionalidade perfil 
E acessar a funcionalidade gerenciar conta
Então no campo tipo de usuário devem existir as opções de usuários do tipo comun, admin e crítico

Esquema do Cenário: Não deve ser possível criar um usuario com formato de e-mail inválido
Quando preencher o campo nome 
E preencher o campo e-mail "<e-mail>" com formato de e-mail inválido
E preencher o campo senha
E preencher o campo confirmar senha
E acessar a função cadastrar
Então o sistema exibirá o alerta de erro "Falha no cadastro. Não foi possível cadastrar o usuário"
E o cadastro do usuário não será realizado com sucesso
Exemplos:
|  e-mail  |
|  tha.com | 
|  tha@tha |
|   @.com  |
|     @    |
|   .com   |

Esquema do Cenário: Deve ser possível criar um usuario com qualquer formato de nome
Quando preencher o campo nome "<nome>" com qualquer formato
E preencher o campo e-mail
E preencher o campo senha
E preencher o campo confirmar senha
E acessar a função cadastrar
Então o sistema exibirá o alerta informando que o cadastro foi realizado com sucesso 
Exemplos:
|   nome   |
|  Tha@196 | 
|  ¨&*#$/  |
|💯🤣😂😊|
|    §§    |

Esquema do Cenário: Não deve ser possível cadastrar um usuário com senha e confirmar senha diferentes
Quando preencher o campo nome 
E preencher o campo e-mail 
E preencher o campo senha "<senha>" com senha diferente do campo confirmar senha
E preencher o campo confirmar senha "<confirmar senha>" com senha diferente do campo senha
E acessar a função cadastrar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."
E o cadastro do usuário não será realizado com sucesso
Exemplos:
|  senha  | confirmar senha |
|  123456 |     567891      |
|  238569 |     876932      |
|  597426 |     157822      |
|  698574 |     369147      |
|  852987 |     456932      |

Esquema do Cenário: Não deve ser possível cadastrar um usuário sem informar os campos obrigatórios
Quando não preencher o campo nome 
E não preencher o campo e-mail 
E não preencher o campo senha 
E não preencher o campo confirmar senha 
E acessar a função cadastrar
Então o sistema exibirá mensagens de erro em todos os campos
E o cadastro do usuário não será realizado com sucesso

Esquema do Cenário: Não deve ser possível cadastrar um usuário com senha e confirmar senha < 6 dígitos e > 12 dígitos
Quando preencher o campo nome 
E preencher o campo e-mail 
E preencher o campo senha com "<senha>"
E preencher o campo confirmar senha com "<confirmar senha>"
E acessar a função cadastrar
Então o sistema exibirá a mensagem de erro "<mensagem>"
E o cadastro do usuário não será realizado com sucesso
Exemplos:
|      senha      |  confirmar senha  |                mensagem                 |
|        1        |         1         |  A senha deve ter pelo menos 6 dígitos. |
|      12345      |       12345       |  A senha deve ter pelo menos 6 dígitos. |
|  1234567891235  |   1234567891235   |  A senha deve ter no máximo 12 dígitos. |
| 123456789123567 |  123456789123567  |  A senha deve ter no máximo 12 dígitos. |

Cenário: Não deve ser possível cadastrar um usuário com email > 60 caracteres
Quando preencher o campo nome 
E preencher o campo e-mail com 61 carecteres "thaisthaisthaisthaisthaisthaisthaisthaisthaisthaisthai@qa.com"
E preencher o campo senha
E preencher o campo confirmar senha
E acessar a função cadastrar
Então o sistema exibirá o alerta de erro "Falha no cadastro. Não foi possível cadastrar o usuário"
E o cadastro do usuário não será realizado com sucesso

Cenário: Não deve ser possível cadastrar um usuário com nome > 100 caracteres
Quando preencher o campo nome com 101 caracteres "Thais Barbosa Thais Barbosa Thais Barbosa Thais Barbosa Thais Barbosa Thais Barbosa Thais Barbosa Tha"
E preencher o campo e-mail
E preencher o campo senha
E preencher o campo confirmar senha
E acessar a função cadastrar
Então o sistema exibirá o alerta de erro "Falha no cadastro. Não foi possível cadastrar o usuário"
E o cadastro do usuário não será realizado com sucesso


