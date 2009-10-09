require "#{File.dirname(__FILE__)}/database"      

module MoneyMg
  
  module Config   
    include Database
     
    # Versao da aplicacao
    #              
    APP_VERSION = '1.0.0'  unless defined? APP_VERSION
  end

end