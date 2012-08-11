Restaurant::Application.routes.draw do
  
  resources :customers, :orders
 
end
