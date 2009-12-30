ActionController::Routing::Routes.draw do |map|
  map.resources :pets
  map.resources :visitations
  map.resources :owners

  map.root :controller => "visitations"
end
