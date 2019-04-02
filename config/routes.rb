Rails.application.routes.draw do
  get 'survey/condition' => 'codition/name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'survey/:condition_id/:question_id' => 'qusestions#content'
  #get 'surveys/:question_number' => 'surveys#question'
end
