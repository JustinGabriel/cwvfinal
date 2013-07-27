RailsinstallerOsxDemo::Application.routes.draw do
  devise_for :recruiters
    
    resources :recruiters do
        resources :messages do
            collection do
                post :delete_selected
            end
        end
    end
    
    resources :recruiters do
        member do
            get :following, :followers, :bookmarkers, :bookmarking, :account
            
        end
    end

    resources :users do
        resources :messages do
            collection do
                post :delete_selected
            end
        end
    end

    resources :users do
        member do
            get :following, :followers, :bookmarkers, :bookmarking, :account
            
        end
    end
    resources :sessions, only: [:new, :create, :destroy]
    resources :microposts, only: [:create, :destroy]
    resources :schools, only: [:create, :destroy]
    resources :relationships, only: [:create, :destroy]
    resources :bookmarks, only: [:create, :destroy]

    resources :bookmarks, only: [:create, :destroy]
    
    root to: 'static_pages#index'
    
    match '/signup',   to: 'users#new'
    match '/signin',   to: 'sessions#new'
    match '/signout',  to: 'sessions#destroy', via: :delete
    
    match '/home',    to: 'static_pages#home'

    match '/index',    to: 'static_pages#index'
    match '/legal',    to: 'static_pages#legal'

    
    match '/help',    to: 'static_pages#help'
    match '/about',   to: 'static_pages#about'
    match '/contact', to: 'static_pages#contact'
    match '/recruiters', to: 'static_pages#recruiters'
    match '/linkedin', to: 'static_pages#linkedin'
    match '/marketplace',    to: 'static_pages#marketplace'
    match '/jobs',   to: 'static_pages#jobs'
    match '/university',   to: 'static_pages#university'
   
    
    # The priority is based upon order of creation:
    # first created -> highest priority.
    
    # Sample of regular route:
    #   match 'products/:id' => 'catalog#view'
    # Keep in mind you can assign values other than :controller and :action
    
    # Sample of named route:
    #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
    # This route can be invoked with purchase_url(:id => product.id)
    
    # Sample resource route (maps HTTP verbs to controller actions automatically):
    #   resources :products
    
    # Sample resource route with options:
    #   resources :products do
    #     member do
    #       get 'short'
    #       post 'toggle'
    #     end
    #
    #     collection do
    #       get 'sold'
    #     end
    #   end
    
    # Sample resource route with sub-resources:
    #   resources :products do
    #     resources :comments, :sales
    #     resource :seller
    #   end
    
    # Sample resource route with more complex sub-resources
    #   resources :products do
    #     resources :comments
    #     resources :sales do
    #       get 'recent', :on => :collection
    #     end
    #   end
    
    # Sample resource route within a namespace:
    #   namespace :admin do
    #     # Directs /admin/products/* to Admin::ProductsController
    #     # (app/controllers/admin/products_controller.rb)
    #     resources :products
    #   end
    
    # You can have the root of your site routed with "root"
    # just remember to delete public/index.html.
    #root :to => 'home#index'
    
    # See how all your routes lay out with "rake routes"
    
    # This is a legacy wild controller route that's not recommended for RESTful applications.
    # Note: This route will make all actions in every controller accessible via GET requests.
    # match ':controller(/:action(/:id))(.:format)'
end