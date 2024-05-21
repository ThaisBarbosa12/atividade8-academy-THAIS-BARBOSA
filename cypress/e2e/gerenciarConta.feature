# language: pt

Funcionalidade: Gerenciar conta
Como um usuário do sistema
Desejo poder gerenciar minha conta
Para ter controle sobreminhas informações

@novoUsuario
Cenário: Deve ser possível acessar a atualização de informações com um usuário autenticado no sistema como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário poderá atualizar suas informações

@novoUsuario
Cenário: Deve ser possível alterar apenas suas próprias informações como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar as próprias informações de nome, senha e confirmar senha do usuário comum
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Deve ser possível atualizar as informações de nome e senha do usuário na funcionalidade de gerenciamento de conta como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar o campo nome
E atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Os campos de senha e confirmação de senha devem ser preenchidos com os mesmos dados para que a senha possa ser alterada como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Não deve ser possível alterar a senha do usuário caso os campos de senha e confirmação de senha sejam diferentes como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com um valor diferente do inserido no campo senha
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: O usuário deve vizualizar os seus dados relevantes quando acessar a funcionalidade de gerenciar conta como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário terá acesso aos dados de nome e e-mail da sua conta

@novoUsuario
Cenário: Não deve ser possível atualizar a senha do usuário para uma senha com < 6 dígitos como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar os campos de senha e confirmar senha para "12345"
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"
E o campo confirmar senha exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"

@novoUsuario
Cenário: Não deve ser possível atualizar a senha do usuário com dados nulos como usuário comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando habilitar a função alterar senha
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "Campo obrigatório"
E o campo confirmar senha exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: Deve ser possível acessar a atualização de informações com um usuário autenticado no sistema como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário poderá atualizar suas informações

@novoUsuario
Cenário: Deve ser possível alterar apenas suas próprias informações como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar as próprias informações de nome, senha e confirmar senha do usuário comum
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Deve ser possível atualizar as informações de nome e senha do usuário na funcionalidade de gerenciamento de conta como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar o campo nome
E atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Os campos de senha e confirmação de senha devem ser preenchidos com os mesmos dados para que a senha possa ser alterada como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Não deve ser possível alterar a senha do usuário caso os campos de senha e confirmação de senha sejam diferentes como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com um valor diferente do inserido no campo senha
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: O usuário deve vizualizar os seus dados relevantes quando acessar a funcionalidade de gerenciar conta como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário terá acesso aos dados de nome e e-mail da sua conta

@novoUsuario
Cenário: Não deve ser possível atualizar a senha do usuário para uma senha com < 6 dígitos como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar os campos de senha e confirmar senha para "12345"
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"

@novoUsuario
Cenário: Não deve ser possível atualizar a senha do usuário com dados nulos como usuário crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando habilitar a função alterar senha
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "Campo obrigatório"
E o campo confirmar senha exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: Deve ser possível acessar a atualização de informações com um usuário autenticado no sistema como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário poderá atualizar suas informações

@novoUsuario
Cenário: Deve ser possível alterar apenas suas próprias informações como usuário comum como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar as próprias informações de nome, senha e confirmar senha do usuário comum
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Deve ser possível atualizar as informações de nome e senha do usuário na funcionalidade de gerenciamento de conta como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar o campo nome
E atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Os campos de senha e confirmação de senha devem ser preenchidos com os mesmos dados para que a senha possa ser alterada como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Não deve ser possível alterar a senha do usuário caso os campos de senha e confirmação de senha sejam diferentes como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com um valor diferente do inserido no campo senha
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: O usuário deve vizualizar os seus dados relevantes quando acessar a funcionalidade de gerenciar conta como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário terá acesso aos dados de nome e e-mail da sua conta

@novoUsuario
Cenário: Não deve ser possível atualizar a senha do usuário para uma senha com < 6 dígitos como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar os campos de senha e confirmar senha para "12345"
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"

@novoUsuario
Cenário: Não deve ser possível atualizar a senha do usuário com dados nulos como usuário administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando habilitar a função alterar senha
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "Campo obrigatório"
E o campo confirmar senha exibirá a mensagem de erro "As senhas devem ser iguais."