require 'net/http'
  
require 'rexml/document'

class WebserviceController < ApplicationController

	def index
	end

	def temperatura()

		city_name = URI.escape(params[:city_name])
		country_name = URI.escape(params[:country_name])

		url = "http://www.webservicex.net/globalweather.asmx/GetWeather?CityName=#{city_name}&CountryName=#{country_name}"
		resp = Net::HTTP.get_response(URI.parse(url)).body # get_response takes an URI object

		@doc = REXML::Document.new(resp)

		@teste = Hash.from_xml(@doc.root.get_text.value)


	end



end
