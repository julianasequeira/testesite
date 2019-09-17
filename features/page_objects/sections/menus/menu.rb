require_relative '../../sections/menus/menu_form'

class MenuPage < SitePrism::Page
  set_url '/'

  section :menu_form, Sections::MenuForm, 'ul.sf-menus'

end