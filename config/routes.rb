Rails.application.routes.draw do
  get 'hotels_metadata/index'

  post 'hotels_metadata/create'

  delete 'hotels_metadata/delete'

  put 'hotels_metadata/update'

  get 'special_events/index'

  post 'special_events/create'

  delete 'special_events/delete'

  put 'special_events/update'

  get 'promotions/index'

  post 'promotions/create'

  delete 'promotions/delete'

  put 'promotions/update'

  get 'coupons/index'

  post 'coupons/create'

  delete 'coupons/delete'

  put 'coupons/update'

  get 'prices/index'

  post 'prices/create'

  delete 'prices/delete'

  put 'prices/update'

  get 'rooms/index'

  post 'rooms/create'

  delete 'rooms/delete'

  put 'rooms/update'

  get 'clients/index'

  post 'clients/create'

  delete 'clients/delete'

  put 'clients/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
