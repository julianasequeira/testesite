module Sections
  class AddedBag < SitePrism::Section
    element :continue, '.continue '
    element :proceed, 'a[title="Proceed to checkout"]'
  
    def goBag
      proceed.click
      BagPage.new
    end
  end
end
