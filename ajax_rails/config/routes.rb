AjaxTodo::Application.routes.draw do
  root :to => 'tasks#index'
  get '/tasks/index' => 'tasks#index'
  post '/create/:task' => 'tasks#create'
  put '/tasks/complete/:id' => 'tasks#complete'
  put '/tasks/delete/:id' => 'tasks#destroy'
end
