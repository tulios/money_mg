class Item < ActiveRecord::Base
	# Subcategory: subcategory
	# String: name
	# Text: description
	# Date: date         
	# Integer: year
	# Integer: month
	# Decimal: value	
 
	belongs_to :subcategory

	def self.sum(items)
		sum = 0.0
		items.each {|item| sum += item.value}
		sum
	end 
	
	# Recupera todos os itens pelo ano informado
	# params:
	# => Integer: year
	#
	def self.find_all_by_year(year)     
	  Item.all(:conditions => ["year = ?", year])
	end  
	  
	# Recupera todos os itens pelo mês e ano informado
	# params:                                 
	# => Integer: month
	# => Integer: year
	#
	def self.find_all_by_month_and_year(month, year)
	    Item.all(:conditions => ["month = ? and year = ?", month, year])
	end     
	   
	# Gera um hash indexado pelo id da subcategoria
	# params:
	# => []: itens (Array de itens)
	#
	def self.generate_hash_by_subcategory_id(itens)
	  hash = {}
    itens.each do |item|
      aux = hash[item.subcategory_id]
      if aux.nil?
        aux = []
      end
      
      aux << item                  
      hash[item.subcategory_id] = aux
      
    end
    hash
	end

end                        






















