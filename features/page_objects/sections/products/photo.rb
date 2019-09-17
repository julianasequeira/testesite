module Sections
  class Photo < SitePrism::Section
    element :big_photo, '#bigpic'
    element :photos, '#views_block'
    
  end
end