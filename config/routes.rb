Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'dashboard#index', as: :signed_in_root
    namespace :admin do
      resources :events
      resources :projects
      resources :pictures, :only => [:index, :create, :destroy]
    end
  end
  constraints Clearance::Constraints::SignedOut.new do
    root to: 'main#home', as: :signed_out_root
  end
end
