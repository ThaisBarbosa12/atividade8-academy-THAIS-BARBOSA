# language: pt

Funcionalidade: Gerenciar conta
Como um usuário do sistema
Desejo poder gerenciar minha conta
Para ter controle sobreminhas informações

@novoUsuario
Cenário: Deve ser possível acessar a atualização de informações como usuário do tipo comum autenticado no sistema
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário poderá atualizar suas informações

@novoUsuario
Cenário: Deve ser possível como usuário do tipo comum alterar apenas suas próprias informações 
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar as próprias informações de nome, senha e confirmar senha do usuário comum
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Deve ser possível como usuário do tipo comum atualizar suas informações de nome e senha na funcionalidade de gerenciamento de conta 
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar o campo nome
E atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Os campos de senha e confirmação de senha devem ser preenchidos com os mesmos dados para que a senha possa ser alterada por um usuário do tipo comum
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo comum alterar a senha do usuário caso os campos de senha e confirmação de senha sejam diferentes 
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com um valor diferente do inserido no campo senha
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: O usuário do tipo comum deve vizualizar os seus dados relevantes quando acessar a funcionalidade de gerenciar conta
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário terá acesso aos dados de nome e e-mail da sua conta

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo comum atualizar a senha do usuário para uma senha com < 6 dígitos
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar os campos de senha e confirmar senha para "12345"
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"
E o campo confirmar senha exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo comum atualizar a senha do usuário com dados nulos
Dado que possuo um usuário comum cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando habilitar a função alterar senha
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "Campo obrigatório"
E o campo confirmar senha exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: Deve ser possível acessar a atualização de informações como usuário do tipo crítico autenticado no sistema
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário poderá atualizar suas informações

@novoUsuario
Cenário: Deve ser possível como usuário do tipo crítico alterar apenas suas próprias informações 
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar as próprias informações de nome, senha e confirmar senha do usuário comum
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Deve ser possível como usuário do tipo crítico atualizar suas informações de nome e senha na funcionalidade de gerenciamento de conta 
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar o campo nome
E atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Os campos de senha e confirmação de senha devem ser preenchidos com os mesmos dados para que a senha possa ser alterada por um usuário do tipo crítico
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo crítico alterar a senha do usuário caso os campos de senha e confirmação de senha sejam diferentes 
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com um valor diferente do inserido no campo senha
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: O usuário do tipo crítico deve vizualizar os seus dados relevantes quando acessar a funcionalidade de gerenciar conta
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário terá acesso aos dados de nome e e-mail da sua conta

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo crítico atualizar a senha do usuário para uma senha com < 6 dígitos
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar os campos de senha e confirmar senha para "12345"
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo crítico atualizar a senha do usuário com dados nulos
Dado que possuo um usuário crítico cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando habilitar a função alterar senha
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "Campo obrigatório"
E o campo confirmar senha exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: Deve ser possível acessar a atualização de informações como usuário do tipo administrador autenticado no sistema
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário poderá atualizar suas informações

@novoUsuario
Cenário: Deve ser possível como usuário do tipo administrador alterar apenas suas próprias informações 
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar as próprias informações de nome, senha e confirmar senha do usuário comum
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Deve ser possível como usuário do tipo administrador atualizar suas informações de nome e senha na funcionalidade de gerenciamento de conta 
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando alterar o campo nome
E atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Os campos de senha e confirmação de senha devem ser preenchidos com os mesmos dados para que a senha possa ser alterada por um usuário do tipo administrador
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com o mesmo valor inserido no campo senha
E acessar a função salvar
Então será possível atualizar as informações do usuário com sucesso

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo administrador alterar a senha do usuário caso os campos de senha e confirmação de senha sejam diferentes
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar o campo senha
E atualizar o campo confirmar senha com um valor diferente do inserido no campo senha
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "As senhas devem ser iguais."

@novoUsuario
Cenário: O usuário do tipo administrador deve vizualizar os seus dados relevantes quando acessar a funcionalidade de gerenciar conta
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando vizualizar o texto "Atualize informações da sua conta."
Então o usuário terá acesso aos dados de nome e e-mail da sua conta

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo administrador atualizar a senha do usuário para uma senha com < 6 dígitos
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando atualizar os campos de senha e confirmar senha para "12345"
E acessar a função salvar
Então o sistema exibirá a mensagem de erro "A senha deve ter pelo menos 6 dígitos"

@novoUsuario
Cenário: Não deve ser possível como usuário do tipo administrador atualizar a senha do usuário com dados nulos
Dado que possuo um usuário administrador cadastrado e logado no sistema
E que acessei a funcionalidade de gerencimaneto de conta
Quando habilitar a função alterar senha
E acessar a função salvar
Então o campo senha senha exibirá a mensagem de erro "Campo obrigatório"
E o campo confirmar senha exibirá a mensagem de erro "As senhas devem ser iguais."