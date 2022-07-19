#language: pt

Funcionalidade: Página do Produto
    Sendo um usuário do YourLogo
    Quero poder personalizar os produtos que irei comprar na página do produto
    Para ter uma melhor experiência de compra

Contexto: Estar na página de um produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto

Cenário: Trocar a cor do produto
    Quando alterar a cor do produto
    Então deverá alterar a imagem apresentada na Pradeep

Cenário: Aumentar a quantidade do produto
    Quando aumentar a quantidade do produto
    Então deverá alterar a quantidade exibida na Pradeep

Cenário: Aumentar a quantidade do produto no carrinho
    Quando aumentar a quantidade do produto 
    E adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com a quantidade aumentada

Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com sucesso 