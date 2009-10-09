# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require 'fusioncharts_helper'
include FusionChartsHelper 

# Incluindo as classes extras do money mg
include MoneyMg            

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def get_year(hash)
    if hash[:year].nil? or hash[:year].length == 0
        return Date.current.year
    end       
    hash[:year]
  end                 
  
  def get_month(hash)
    if hash[:month].nil? or hash[:month].length == 0
        return Date.current.month
    end       
    hash[:month]
  end

	def currency_to_number(currency)
  	return currency.gsub(/[\.]/, '').gsub(/[,]/, '.').gsub(/[A-Z]/, '').gsub(/[$]/, '').gsub(/[\s]/, '').to_f
	end
end
