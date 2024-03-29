Rails.application.routes.draw do
	root 'products#index'

get 'carts/:id' => "carts#show", as: "cart"
delete 'carts/:id' => "carts#destroy"

post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
post 'line_items' => "line_items#create"
get 'line_items/:id' => "line_items#show", as: "line_item"
delete 'line_items/:id' => "line_items#destroy"

resources :products
resources :orders
namespace 'api', defaults: { format: :json } do
    namespace 'v1' do
      resources :products, only: %i[index show], param: :product_id
      resources :carts, only: %i[show index], param: :cart_id
    end
end
end
