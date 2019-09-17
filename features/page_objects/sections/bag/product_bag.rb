module Sections
  class ProductBag < SitePrism::Section
    element :quantity, '.cart_quantity_input'
    element :del, '.icon-trash'
    element :without, '.alert'
    element :checkout, 'a.button.standard-checkout'
   
    def changeQuantity
      quantity.click
      quantity.set(2)
      BagPage.new
    end

    def delete
      del.click
      BagPage.new
    end

    def proceedCheckout
      checkout.click
      CheckoutPage.new
    end
  end
end
