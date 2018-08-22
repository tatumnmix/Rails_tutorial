Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :posts do
      post 'comments', to: 'comments#create', as: 'comments'
      delete 'comments/:id', to: 'comments#destroy', as: 'comment'
    end
    root 'posts#index'
end
