module Sections
  class Confirm < SitePrism::Section
    element :finish, 'button.button.button-medium'

    def confirmOrder
      finish.click
    end
  end
end
