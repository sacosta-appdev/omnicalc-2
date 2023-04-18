class CoordinatesController < ApplicationController

  def street_to_coords

    render({ :template => "coordinates/street_to_coords_form.html.erb"})

  end

  def street_to_coords_results

    @user_address = params.fetch("user_street_address")
    @user_address_to_api = @user_address.gsub(" ", "%")
    @raw_address_data = URI.open("https://maps.googleapis.com/maps/api/geocode/json?address=#{@user_address_to_api}&key=#{ENV.fetch("GMAPS_KEY")}").read
    @parsed_address_data = JSON.parse(@raw_address_data)
    @fetch_results = @parsed_address_data.fetch("results")
    @fetch_hash = @fetch_results[2]
    # @fetch_geometry = @fetch_hash.fetch("geometry")
  

    render({ :template => "coordinates/street_to_coords_results.html.erb"})

  end

end
