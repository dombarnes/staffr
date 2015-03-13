Staffr::Application.routes.draw do
    root 'home#index'
    get '/admin' => 'admin#index'
    get '/staff/all' => 'staffs#all'

    resources :leave_types, only: [:index, :show]
    resources :staffs
    resources :staff, controller: 'staffs', as: 'staff' do
      resources :holiday_entitlements
      resources :holidays
    end
    resources :holidays  
    resources :holiday_entitlements
    namespace :admin do
      resources :leave_types
    end
end
