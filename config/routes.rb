Rails.application.routes.draw do
  get 'hotels_metadata/index'

  get 'hotels_metadata/create'

  get 'hotels_metadata/delete'

  get 'hotels_metadata/update'

  get 'special_events/index'

  get 'special_events/create'

  get 'special_events/delete'

  get 'special_events/update'

  get 'promotions/index'

  get 'promotions/create'

  get 'promotions/delete'

  get 'promotions/update'

  get 'coupons/index'

  get 'coupons/create'

  get 'coupons/delete'

  get 'coupons/update'

  get 'prices/index'

  get 'prices/create'

  get 'prices/delete'

  get 'prices/update'

  get 'rooms/index'

  get 'rooms/create'

  get 'rooms/delete'

  get 'rooms/update'

  get 'clients/index'

  get 'clients/create'

  get 'clients/delete'

  get 'clients/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
