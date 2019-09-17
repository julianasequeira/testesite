require_relative '../../sections/forms/login_form'

class LoginPage < SitePrism::Page
  set_url '/'

  section  :login_form, Sections::LoginForm, '#login_form'

end