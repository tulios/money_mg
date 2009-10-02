class CategoriesChartController < ApplicationController

	def index                                                                               
	  @year = get_year(params)                                     
    @month = get_month(params)
    
		@categories = Category.all(:order => "income desc")
		
    itens = Item.find_all_by_month_and_year(@month, @year)
    hash = Item.generate_hash_by_subcategory_id(itens)
    Category.fill_subcategories_with_itens(@charge_categories, hash)
 	end

end
