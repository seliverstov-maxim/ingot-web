IngotWeb::Application.routes.draw do
  scope module: :web do
    namespace :admin do
      resources :images
    end
  end
  namespace :api do
  end
end
