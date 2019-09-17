require_relative '../../sections/forms/search_form'
require_relative '../../sections/menus/menu_form'

class Home < SitePrism::Page
  set_url '/'

  element :login, '.login'
  element :name, '.account'
  element :logout, '.logout'
  
  section :search_form, Sections::SearchForm, '#search_block_top'
  section :menu_form, Sections::MenuForm, 'ul.sf-menu'
  
  def  access_login_form
    login.click
    LoginPage.new
  end
  
  
  
  # elements :product_list, 'div.product-image-container a img'

  # element :evening_dress, '#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(2) > a'
  
  # element :product, '#center_column > ul > li:nth-child(1)'
  # element :add, '#add_to_cart > button > span'
  # element :add_to_bag, 'li:nth-child(1) > div > div.right-block > div.button-container > a.button.ajax_add_to_cart_button.btn.btn-default > span'
  # element :proceed, 'div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a > span'
  # element :more, '#product_1_1_0_0 > td.cart_quantity.text-center > input.cart_quantity_input.form-control.grey'
  # element :delete, '#product_5_19_0_0 > td.cart_delete.text-center > div'
  # element :message, '#center_column > p'
  # element :quantity, '#summary_products_quantity'
  
  # elements :product_list, '.ajax_block_product'
end