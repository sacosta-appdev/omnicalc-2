Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/add", { :controller => "math", :action => "add_form"})
  get("/subtract", { :controller => "math", :action => "subtract_form"})
  get("/multiply", { :controller => "math", :action => "multiply_form"})
  get("/divide", { :controller => "math", :action => "divide_form"})

end
