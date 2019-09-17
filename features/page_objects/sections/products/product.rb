module Sections
  class Product < SitePrism::Section
    element :add_car, '#add_to_cart > button'
    element :size, '#group_1'
    element :small, '#group_1 > option:nth-child(1)'
    element :medium, '#group_1 > option:nth-child(2)'
    element :big, '#group_1 > option:nth-child(3)'
    element :quantity, '#quantity_wanted'
    element :wish, '#wishlist_button'

    elements :product_color, '#color_to_pick_list'

    def shop
      add_car.click
      Procuct.new
    end
  end
end
