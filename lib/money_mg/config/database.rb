# Modulo de acesso aos dados configurados no database.yml. Os dados retornados
# pertencem ao ambiente configurado na execucao.
#
module MoneyMg       
  
  module Database
    require 'yaml' 
        
    @@db_config = YAML.load_file("#{RAILS_ROOT}/config/database.yml")[RAILS_ENV]
                 
    # Retorna o path da pasta com os scripts adicionais
    #
    def self.scripts_dir
      "#{RAILS_ROOT}/db/scripts/" 
    end     
               
    # Retorna o nome da base de dados configurada no database.yml
    #
    def self.database
      @@db_config['database']
    end                      
   
    # Retorna o adaptador configurado no database.yml
    #
    def self.adapter
      @@db_config['adapter']
    end                   
                                                   
    # Retorna o username configurado para o database.yml
    #
    def self.username       
      @@db_config['username']
    end                    
                                                      
    # Retorna o password configurado para o database.yml
    def self.password
      @@db_config['password']
    end
  end   
  
end