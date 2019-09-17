module PageHelper
    module KillModals
      def self.kill_modals
        Capybara.page.execute_script(
          '
          $("#btClose").click();
          $(".modal-close").click();
          '
        )
      end
  
      def load
        super
  
        KillModals.kill_modals
      end
    end
  end
  