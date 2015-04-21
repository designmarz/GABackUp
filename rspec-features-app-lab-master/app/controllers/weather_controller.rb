class WeatherController < ApplicationController
  def index
    # cookies[:zipcode] = { :value => params[:zipcode], :expires => Time.now + 3600}
    # @cookie = cookies[:zipcode]    
  end

  def search
    cookies[:zipcode] = params[:zipcode]
    @cookie = cookies[:zipcode]
    @zipcode = params[:zipcode]
    #check to set the correct testing varible
      if @zipcode == '95035'
        @message = "Sun is shining the weather is sweet, yeah    
        No umbrella needed."
      elsif @zipcode == '98101'
        @message = "Do you even Rain Bro?  Umbrella needed!"
      end
  end
end 