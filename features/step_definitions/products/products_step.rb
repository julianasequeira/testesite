E(/^clico no produto$/) do 
  @product_page = @search_page.product_list[0].seeProduct
end

Então(/^deve abrir a página do produto$/) do
  expect(@product_page).to have_buy
end
