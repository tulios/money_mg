namespace :db do
	
	namespace :scripts do

		desc "Executa todos os scripts configurados em lib/money_mg/utils/database.rb scripts_dir"
	  task :load => :environment do
	    require File.join("#{File.dirname(__FILE__)}/../money_mg", 'money_mg')       
	    include MoneyMg
			Scripts::load
	  end

	end

end