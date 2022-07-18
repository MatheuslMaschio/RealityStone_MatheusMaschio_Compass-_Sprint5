#language: pt

@regression
@login

Funcionalidade: login de usuário
Como usuário do sistema
Quero me autenticar na aplicação
Para realizar compras

    Contexto:
    Dado esteja na home
    
@verification_login
Esquema do Cenário: validar a autenticação de usuário
    Quando o usuário realizar login com o "<e-mail>" e "<senha >"
    Então uma mensagem deve ser exibida "<msg>"
    Exemplos:
    |e-mail        |senha |msg                    |
    |1234@teste.com|123456|login efetuado.        |     
    |              |123456|É necessário um email. |
    |1234@teste.com|      |É necessário uma senha.|
    |              |      |É necessário um email. |
    |1111@teste.com|      |Falha na autenticação. |

Esquema do Cenário: Recuperação de senha
Dado que esteja com o modal de senhas aberto
Quando efetuar a recuperação de senha atráves do "<e-mail>"
Então será liberado o acesso à aplicação logada "<msg>"
Exemplos:
|E-mail        |msg                                                                    |     
|1234@teste.com|Foi enviado um e-mail de confirmação para o seu endereço:1234@teste.com|
|              |Endereço de e-mail inválido                                            |
|1111@teste.com|Nenhuma conta registrada com esse endereço de e-mail                   |
|1234@teste.cox|Nenhuma conta registrada com esse endereço de e-mail                   |
