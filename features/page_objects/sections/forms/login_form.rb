module Sections
  class LoginForm < SitePrism::Section
    element :email, '#email'
    element :password, '#passwd'
    element :submit, '#SubmitLogin'

    def login(email_, password_)
      email.set email_
      password.set password_
      submit.click
      Home.new
    end
  end 
end
