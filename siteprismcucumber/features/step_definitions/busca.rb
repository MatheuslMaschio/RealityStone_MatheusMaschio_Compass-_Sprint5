Dado('que o usuário esteja na home') do
    @home_page = Home.new
    @home_page.load
    #binding.pry
  end
  
  Quando('realizar uma busca por um produto existente') do
    @home_page.search_for("Dresses")
    @search_results_page = SearchResults.new
    #binding.pry
  end
  
  Então('deverão ser retornados resultados na busca') do
    @search_results_page #trazer produto
    expect(@search_results_page).to have_products
  end
  