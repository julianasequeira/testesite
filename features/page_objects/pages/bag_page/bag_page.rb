require_relative '../../sections/bag/product_bag'

class BagPage < SitePrism::Page
  set_url '/'

  section :my_bag, Sections::ProductBag, '#center_column'

end
