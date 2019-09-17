module PageHelper
  class EmailUtils
    class << self
      USER_GEN = %w[
        luis carlos augusto kerlen cristine mayara gustavo alessandra
        augustos henrique teste sorinan maduro
      ].freeze

      DOMAIN_GEN = %w[
        compasso natura teste objeto centrado xicara agrupado relogio
        cadeira posicionado mesa focado alavancado alinhado compartilhado
        cooperativo acelerado
      ].freeze

      def gen_email_rec
        num = rand(999)

        user = "#{USER_GEN.sample}.#{DOMAIN_GEN.sample}.#{num}"
        domain = "@#{DOMAIN_GEN.sample}.example.com"

        email = "#{user}#{domain}"

        email.length > 40 && email = gen_email_rec

        email
      end
    end
  end
end
