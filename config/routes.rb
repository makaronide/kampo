Rails.application.routes.draw do
  get 'result' => 'results#kampo'

  get 'survey/condition' => 'conditions#name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'

  get 'survey/:condition_id/:question_id' => 'qusestions#content'
  get 'register'  => 'users#register'
  post 'register' => 'users#create'
end
