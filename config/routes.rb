Rails.application.routes.draw do
  get 'name/index'

  get 'name/search'

  get 'website/index'

  get 'website/show'

  root 'website#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
