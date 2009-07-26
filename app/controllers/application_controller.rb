# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require 'fusioncharts_helper'
include FusionChartsHelper 

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

	def currency_to_number(currency)
  	return currency.gsub(/[\.]/, '').gsub(/[,]/, '.').gsub(/[A-Z]/, '').gsub(/[$]/, '').gsub(/[\s]/, '').to_f
	end
end
