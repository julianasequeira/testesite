Dir[File.join(File.dirname(__FILE__), 'page_objects/atg/pages/*.rb')]
  .sort.each { |file| require file }

module Pages
  class AtgPages
    class << self
      def home
        Home.new
      end
    end
  end
end
