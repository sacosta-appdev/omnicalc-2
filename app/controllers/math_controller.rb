class MathController < ApplicationController

  def add_form

    render({ :template => "/math/add_form.html.erb"})

  end

end
