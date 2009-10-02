class Category < ActiveRecord::Base
	# String: name
	# Boolean: income
	# Subcategory: many: subcategories

	has_many :subcategories, :dependent => :destroy

	def sum
		sum = 0.0
		subcategories.each {|subcategory| sum += subcategory.sum}
		sum
	end

	def sum_for_month(month)
		sum = 0.0
		subcategories.each do |subcategory|
			sum += subcategory.sum_for_month(month)
		end
		sum
	end

	def self.sum_income_or_charge(categories, income)
		sum = 0.0
		categories.each do |category|

			if category.income? == income
				sum += category.sum
			end

		end
		sum
	end  
	   
	# Preenche os itens das subcategorias de cada categoria a partir
	# de um hash com os itens indexado pelo id da subcategoria.
	# params:            
	# => []: categories (Array de categorias)
	# => {}: hash_itens (Hash de itens indexado pelo id da subcategoria)
	def self.fill_subcategories_with_itens(categories, hash_itens)    
    if categories
      
      categories.each do |category|
        category.subcategories.each do |subcategory|
          subcategory.items = hash_itens[subcategory.id]
        end
      end
      
    end    
    
	end
	
end
                                                                      








































