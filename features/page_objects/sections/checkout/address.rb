module Sections
  class Adrress < SitePrism::Section
    element :button, 'button.button-medium'

    def selectAddress
      button.click
    end
  end
end
