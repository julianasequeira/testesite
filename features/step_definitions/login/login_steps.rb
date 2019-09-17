Dado('que esteja na home') do
  @home = $atg_pages.home
  @home.load
end

Quando (/^clicar para fazer login$/) do
  @login_page = @home.access_login_form
end

E (/^preencher o formulario com um email válido (.+) e uma senha válida (.+)$/) do |email, senha|
  @home = @login_page.login_form.login(email, senha)
end

Então (/^deve aparecer o nome do lado da opção de sair$/) do
  expect(@home).to have_name
end
