require 'simple_js_runnable.rb'

module PageHelper
  module ScrollablePage
    def scroll_to_top
      execute_script('window.scroll(0,0);')
    end
  end

  module JsUsablePage
    include Greenable
    include ScrollablePage
  end
end
