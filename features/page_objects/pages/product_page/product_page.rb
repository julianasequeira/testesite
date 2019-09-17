require_relative '../../sections/products/product'
require_relative '../../sections/products/datasheet'
require_relative '../../sections/products/photo'

class ProductPage < SitePrism::Page
  set_url '/'

  section :buy, Sections::Product, '.pb-right-column'
  section :data_sheet, Sections::DataSheet, '.page-product-box'
  section :photo, Sections::Photo, '.pb-left-column'

end
