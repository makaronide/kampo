Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'questions#start'
  get 'survey/:condition_id/:question_id' => 'qusestions#content'
  #get 'surveys/:question_number' => 'surveys#question'
end
