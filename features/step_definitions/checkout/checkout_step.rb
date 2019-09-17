E(/^finalizo a compra$/) do
  @checkout_page = @bag_page.my_bag.proceedCheckout
end

E(/^escolho o endereco$/) do
  @checkout_page.address.selectAddress
end

E(/^aceito os termos$/) do
  @checkout_page.shipping.agreeTerms
end

E(/^escolho o metodo de pagamento$/) do
  @checkout_page.payment.paymentMethod
end

E(/^confirmo o pedido$/) do
  @checkout_page.confirm.confirmOrder
end

Então(/^deve haver uma confirmação do pedido$/)do
  expect(@checkout_page).to have_content 'is complete'
end
