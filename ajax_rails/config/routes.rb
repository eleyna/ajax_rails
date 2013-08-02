AjaxTodo::Application.routes.draw do
  root :to => 'tasks#index'
  get '/tasks/index' => 'tasks#index'
  post '/create/:task' => 'tasks#create'
  get '/tasks/complete' => 'tasks#complete'
  put '/tasks/complete/:id' => 'tasks#complete'
  put '/tasks/delete/:id' => 'tasks#destroy'
end
