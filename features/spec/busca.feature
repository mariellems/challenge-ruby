# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  # Completar o cenário abaixo
  @busca_sem_resultados
  Cenário: Busca sem resultados
    Quando buscar pelo produto 'teste'
    Então não devem ser retornados produtos
      E deve ser exibida a mensagem 'No results were found for your search "teste"'

  @busca_adicionar_produto_carrinho
  Cenário: Busca por produto e adicioná-lo no carrinho
    Quando buscar pelo produto 'blouse'
      E o produto estiver em estoque
    Então deve ser possível adicionar ao carrinho
      E deve ser exibida a mensagem de sucesso


