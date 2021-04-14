# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de poder logar no site
  Para poder rastrear minhas compras

  Contexto:
    Dado que esteja na página inicial

  # Completar o cenário abaixo
  @realizar_login
  Cenário: Realizar login
    Quando clicar no link para realizar login
      E informar o email 'testes@testes.com'
      E informar a senha 'm1234'
      E clicar para efetuar login
    Então devo ser autenticado com sucesso

  # Completar o cenário abaixo
  @falha_login
  Cenário: Login com falha
    Quando clicar no link para realizar login
      E informar o email 'testes@testes.com'
      E informar a senha '1234'
      E clicar para efetuar login
    Então devo ser impedido de efetuar login