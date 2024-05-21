# language: pt

 # language: pt

Funcionalidade: Logar usuário
Como um usuário com registro no sistema
Desejo efetuar login para poder gerenciar
minhas informações ou gerenciar o sistema.

Contexto: Deve acessar a funcionalidade de login
Dado que acessei a tela de login de usuário 
E possuo um usuário cadastrado no sistema

@novoUsuario
Cenário: Deve ser possível logar com e-mail e senha cadastrados
Quando informar o e-mail
E informar a senha
E acessar a função login
Então o usuário será logado com sucesso e direcionado para página inicial do sistema

@novoUsuario
Cenário: Não deve ser possível logar sem preencher o campo e-mail
Quando não informar o e-mail
E informar a senha
E acessar a função login
Então o sistema exibirá a mensagem de erro "Informe o e-mail"
E o usuário não será logado e não será direcionado para página inicial do sistema

@novoUsuario
Cenário: Não deve ser possível logar sem preencher o campo senha
Quando informar o e-mail
E não informar a senha
E acessar a função login
Então o sistema exibirá a mensagem de erro "Informe a senha"
E o usuário não será logado e não será direcionado para página inicial do sistema

@novoUsuario
Esquema do Cenário: Não deve ser possível logar com e-mail e senha inválidos
Quando informar o e-mail "<email>" inválido
E informar a senha "<senha>" inválida
E acessar a função login
Então o sistema exibirá o alerta de erro "Usuário ou senha inválidos."
E o usuário não será logado e não será direcionado para página inicial do sistema
Exemplos:
|       email      |  senha  |
|    maria@silva   |  14785  |
|     thais@qa     |   9658  |
|     @qa.com      |    06   |
|     tha.tha      |   789   |

@novoUsuario
Esquema do Cenário: Não deve ser possível logar com e-mail e senha não cadastrados
Quando informar o e-mail "<email>" não cadastrado
E informar a senha "<senha>" não cadastrada
E acessar a função login
Então o sistema exibirá o alerta de erro "Usuário ou senha inválidos."
E o usuário não será logado e não será direcionado para página inicial do sistema
Exemplos:
|       email      |   senha   |
| mano@brown.nuvem |   596899  |
|  wiger@pingo.com |  9687006  |
|  259876@tha.tha  |  8695720  |
|  user678@tio.tio |  00369982 |
|post5986@post.post| 785996244 |