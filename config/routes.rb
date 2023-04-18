Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: redirect('https://3000-sacostaappdev-omnicalc2-bbbtdefg1jr.ws-us94.gitpod.io/add')

  # get('/', to: redirect('/add'))

  get("/", { :controller => "math", :action => "add_form"})

  get("/add", { :controller => "math", :action => "add_form"})
  get("/wizard_add", { :controller => "math", :action => "add_results"})

  get("/subtract", { :controller => "math", :action => "subtract_form"})
  get("/wizard_subtract", { :controller => "math", :action => "subtract_results"})

  get("/multiply", { :controller => "math", :action => "multiply_form"})
  get("/wizard_multiply", { :controller => "math", :action => "multiply_results"})

  get("/divide", { :controller => "math", :action => "divide_form"})
  get("/wizard_divide", { :controller => "math", :action => "divide_results"})

end
