Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Quando("o produto estiver em estoque") do
  expect(@search_page.produto_em_estoque).to have_content 'In stock'
end

Então("deve ser possível adicionar ao carrinho") do
  @search_page.adicionar_produto_carrinho
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Então("não devem ser retornados produtos") do
  expect(@search_page.products.first).to have_no_content 'teste'
end

Então("deve ser exibida a mensagem de sucesso") do
  expect(@search_page.mensagem_produto_adicionado).to have_content 'Product successfully added to your shopping cart'
end

Então("deve ser exibida a mensagem {string}") do |mensagem|
  expect(@search_page.mensagem(mensagem)).to eq mensagem
end
