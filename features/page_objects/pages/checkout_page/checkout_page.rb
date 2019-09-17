require_relative '../../sections/checkout/address'
require_relative '../../sections/checkout/terms'
require_relative '../../sections/checkout/payment'
require_relative '../../sections/checkout/confirm'

class CheckoutPage < SitePrism::Page
  set_url '/'

  section :address, Sections::Adrress, 'div.columns-container'
  section :shipping, Sections::Terms, '#form'
  section :payment, Sections::Payment, '#order'
  section :confirm, Sections::Confirm, 'div#center_column'

end
