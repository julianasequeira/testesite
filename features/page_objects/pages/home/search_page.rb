require_relative '../../sections/forms/search_form'
require_relative '../../sections/products/product_list'
require_relative '../../sections/modals/added'

class SearchPage < SitePrism::Page
  set_url '/'

  section :search_form, Sections::SearchForm, '#search_block_top'
  section :added_bag, Sections::AddedBag, '#layer_cart'

  sections :product_list, Sections::ProductList, 'div.product-container'
end
