module PageHelper
  class JsUtils
    class << self
      def scroll_to_top
        Capybara.page.execute_script('window.scroll(0,0);')
      end
    end
  end
end
