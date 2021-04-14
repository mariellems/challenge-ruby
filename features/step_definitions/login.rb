Quando("clicar no link para realizar login") do
    @login_page.clicar_link_login
end
  
Quando("informar o email {string}") do |email|
    @login_page.informar_email(email)
end
  
Quando("informar a senha {string}") do |pass|
    @login_page.informar_senha(pass)
end
  
Quando("clicar para efetuar login") do
    @login_page.botao_login
end
  
Então("devo ser autenticado com sucesso") do
    expect(@login_page.breadcrumb_account).to have_content 'Teste Tester'
end

Então("devo ser impedido de efetuar login") do
    expect(@login_page.alert_message_authentication_failed).to have_content 'Invalid password.'
end