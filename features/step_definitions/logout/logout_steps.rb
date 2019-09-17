E(/^esteja logado$/) do
  @login_page = @home.access_login_form
  @home = @login_page.login_form.login('juliana.sequeira_BOLS@compasso.com.br', '123456')
  expect(@home).to have_name
end

Quando(/^clicar em logout$/) do
  @home.logout.click
end

Então(/^deve sair da conta e ir para login$/) do
  expect(@home.access_login_form).to have_login_form
end
