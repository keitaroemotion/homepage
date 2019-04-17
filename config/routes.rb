Rails.application.routes.draw do
  resources :animes do
     member do
       get 'index'
     end
     collection do
     end
  end

  get "/images/slideshow/:id.jpg" => "main#index"

  namespace :admins do
    resources :documents do
      member do
        get  'edit'
        post 'edit'
        get  'new'
        post 'new'
      end
      collection do
        get  'created'
        post 'created'
      end
    end
  end

  resources :documents do
    member do
      get 'show'
    end
  end

  root 'main#index'

  resources :main do
    collection do
      get 'switch'
    end
  end
end
