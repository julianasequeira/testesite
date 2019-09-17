module Sections
  class SearchForm < SitePrism::Section
    element :searchbox, '#searchbox > button'
    element :find, '#search_query_top'

    def search(item)
      find.click
      find.set(item)
      searchbox.click
      SearchPage.new
    end
  end
end
