Quando(/^faço login com usuário (.+) e senha (.+)$/) do |email, senha|
  @login_page = @home.access_login_form
  @home = @login_page.login_form.login(email, senha)
  expect(@home).to have_name
end                                                                             
                                                                                
Quando(/^busco o produto (.+)$/) do |item|   
  @search_page = @home.search_form.search(item)                                    
end                                                                             
  
Quando(/^passo o mouse no tipo de produto e clico em sub opcao$/) do
  @menu_page = @home.menu_form.sub_option
end

Então(/^deve aparecer uma lista de produtos$/) do     
  binding.pry                           
  expect(@home).to have_product_list
end                      

Então(/^deve aparecer uma mensagem para avisar que não tem o produto$/) do
  expect(@home).not_to have_product_list
end
