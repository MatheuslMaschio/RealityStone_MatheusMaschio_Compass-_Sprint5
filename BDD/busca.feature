#language: pt

Funcionalidade: Busca
    Como um usuário do Ecommerce Your Logo
    Quero poder buscar por diferentes produtos
    Para poder personalizar minhas compras

    Contexto: Estar na home
        Dado que esteja na home

    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    Esquema do Cenário: Buscar por produtos existentes
        Dado que esteja na home
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca

        Exemplos: 
        |Vestidos |
        |Camisetas|
        |Blusas   |

# primeira execução = vestidos
# segunda execução = Camisetas
# terceira execução = Blusas


    

