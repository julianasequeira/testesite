module Sections
  class Terms < SitePrism::Section
    element :agree, '#uniform-cgv'
    element :nextButton, 'button.button.button-medium'

    def agreeTerms
      agree.click
      nextButton.click
    end
  end
end
