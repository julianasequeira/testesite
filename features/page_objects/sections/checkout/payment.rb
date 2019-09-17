module Sections
  class Payment < SitePrism::Section
    element :bank, 'a[title="Pay by bank wire"]'
    element :check, 'a[title="Pay by check."]' 

    def paymentMethod
      bank.click
    end
  end
end
