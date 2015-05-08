Rails.application.routes.draw do

  devise_for :users

  get 'advices/index'

  get 'chapters/index'

  get 'pictures/index'

  get 'pictures/show'

  # Link to pages of stories
  resources :stories do
    resources :pictures
    resources :tags
    resources :chapters
    resources :advices
  end

  resources :chapters do
    resources :pictures
  end

  resources :advices do
    resources :pictures
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
