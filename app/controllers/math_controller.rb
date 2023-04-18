class MathController < ApplicationController

  def add_form

    render({ :template => "/math/add_form.html.erb"})

  end

  def subtract_form

    render({ :template => "/math/subtract_form.html.erb"})

  end

  def multiply_form

    render({ :template => "/math/multiply_form.html.erb"})

  end

  def divide_form

    render({ :template => "/math/divide_form.html.erb"})

  end

end
