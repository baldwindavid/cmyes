ActionController::Routing::Routes.draw do |map|
  map.resources :page_images
  map.resources :page_assets
  map.root :controller => "welcome"
  # these routes should be last
  map.comatose_admin "admin"
  map.comatose_root '', :layout => "application"
end
