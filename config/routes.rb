Rails.application.routes.draw do
  get 'main/home'
  get 'main/contacts'
  root 'main#home'
  get 'guitar-buyers-nyc-queens' => 'main#guitars', as: :guitars
  get 'sell-my-bass-nyc-queens' => 'main#basses',  as: :basses  
  get 'sell-my-musical-instruments-equipment-nyc'   => 'main#amps',    as: :amps
  get 'we-buy-pedals-nyc-queens' => 'main#pedals',  as: :pedals
  get 'sell-my-dj-equipment-nyc-queens' => 'main#dj_equipment',  as: :dj_equipment 
  post 'message' => 'main#message', as: :message      
end
