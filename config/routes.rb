Rails.application.routes.draw do
  get 'search/search'

  get 'search/name_generate'

  get 'website/index'

  get 'website/show'

  root 'website#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
