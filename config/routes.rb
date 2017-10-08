Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :calendars do
    get 'create_events', on: :collection
    get 'preview', on: :collection
    get "/:year/:month", to: "calendars#preview", constraints: { year: /\d{4}/, month: /\d{1,2}/}, on: :collection
  end
end
