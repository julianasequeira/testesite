module Sections
  class MenuForm < SitePrism::Section
    elements :menu_elements, 'ul.sf-menu li', visible: :visible
    elements :sub_elements, '.submenu-container li', visible: :visible
    
    def sub_option
      menu_elements[1].hover
      sub_elements[0].click
      # binding pry
      MenuPage.new
    end
  end
end
