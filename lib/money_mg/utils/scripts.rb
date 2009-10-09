module MoneyMg     
  
  module Scripts

  	def self.load
  		puts "\nDropando schema e recriando tabelas com rake"
  		system ("rake -q db:schema:load")
	
  		puts "\nScripts:"
  		Dir.entries(Database::scripts_dir).sort.each do |file|
  			if sql?(file)
  				self.execute_script!(file)
  			end
  		end
  	end

  	private
  	def self.sql?(file)
  		return file =~ /.*\.sql$/
  	end	

  	def self.execute_script!(script)
  		puts "Executando: #{script}"
		
  		sql = ""
  		File.open("#{Database::scripts_dir}#{script}", "r").each do |line|
  			sql << line
  		end

  		Scripts.execute(sql)
  	end
	
  	# Executa o sql passado
  	#
  	def self.execute(sql)
  		begin
  			con = ActiveRecord::Base.connection()
  			con.begin_db_transaction
  			con.execute(sql)
  			con.commit_db_transaction
			
  			puts "-> Sql executado com sucesso!"
  		rescue StandardError => e
  			puts "-> Falha ao executar sql. (#{e})"
  		end
  	end

  end                   
  
end





























