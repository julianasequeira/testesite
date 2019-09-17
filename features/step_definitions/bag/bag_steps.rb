E(/^adiciono ao carrinho$/) do
  @product_page = @search_page.product_list[0].addCar
end

E(/^visualizo a sacola de compras$/) do
  @bag_page = @search_page.added_bag.goBag
end

E(/^excluo um item$/) do
  @bag_page.my_bag.delete
end

E(/^altero a quantidade de itens$/) do
  @bag_page.my_bag.changeQuantity
end

Então(/^deve avisar que o carrinho está vazio$/) do
  expect(@bag_page.my_bag).to have_without
end

Então(/^irá aparecer um modal podendo continuar compras ou finalizar compra$/) do
  expect(@search_page).to have_added_bag
end

Então(/^deve mostrar a mensagem que tem dois produtos$/) do
  expect(@home).to have_content '2 Products'
end
