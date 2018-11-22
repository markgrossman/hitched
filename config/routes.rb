Rails.application.routes.draw do
  resources :invites do
  	resources :rsvps
  end
end
