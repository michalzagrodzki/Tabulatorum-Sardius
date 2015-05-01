Rails.application.routes.draw do

  # Link to pages of stories
  resources :stories do
    resources :pictures
    resources :tags
  end

  # Link to contact page
  match '/contact_us', to: 'contacts#new', via: 'get', :as => :contact
  resources "contacts", only: [:new, :create]

  # Link to main page
  get 'welcome/index'

  # Link to about us page
  get 'about_us/index'

  # Link to map page
  match '/map', to: 'maps#index', via: 'get'


  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
