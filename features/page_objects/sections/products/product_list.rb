module Sections
  class ProductList < SitePrism::Section
    element :photo, 'div.product-image-container a img'
    element :see, '.quick-view-mobile'
    element :add_to_car, '.ajax_add_to_cart_button'
    element :more, 'lnk_view'
    
    elements :color, '.color_to_pick_list'

    def seeProduct
      photo.click
      ProductPage.new
    end

    def addCar
      photo.hover
      add_to_car.click
      ProductPage.new
    end
  end
end
