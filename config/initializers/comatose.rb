Comatose.configure do |config|

  config.admin_title          = 'Your Company'
  config.admin_sub_title      = 'Website Administration'
  config.default_filter       = "cmyes"
  
  # Includes AuthenticationSystem in the ComatoseAdminController
  config.admin_includes << :dummy_auth
  # config.includes << 

  # Calls :login_required as a before_filter
  config.admin_authorization = :authenticate
  
  # config.admin_get_author do
  #   current_user.email
  # end
  
  
  #   config.admin_get_root_page do
  # 
  #     # Returns multiple 'roots'
  #     [
  #       ComatosePage.find_by_path( 'services' ),
  #       ComatosePage.find_by_path( 'some-page )
  #     ]
  # 
  # end
  
  TextFilters.define :cmyes, "cmyes" do
    def render_text(text)
      OEmbed.transform BlueCloth.new(text).to_html
    end
  end

end