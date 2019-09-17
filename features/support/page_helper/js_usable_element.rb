require 'simple_js_runnable.rb'

module PageHelper
  module Greenable
    include SimpleJsRunnable

    def greenify
      jquery('self.css({"border": "3px solid #15a50d"});')
    end

    def gclick
      greenify
      set ''
      click
    end

    def gset(value)
      greenify
      set ''
      set value
    end

    def sclick(_file_name = '', _result = 'passed')
      greenify
      set ''
      click
    end
  end

  module Showable
    include SimpleJsRunnable

    def scroll_into_view
      js('self.scrollIntoView();')
    end
  end

  module JsUsableElement
    include Greenable
    include Showable
  end
end
