class YearResultController < ApplicationController

	def index
    @categories = Category.all(:order => "income desc")
    
    itens = Item.find_all_by_year(Date.current.year)
    hash = Item.generate_hash_by_subcategory_id(itens)
    Category.fill_subcategories_with_itens(@categories, hash)

		@sum_income = Category.sum_income_or_charge(@categories, true)
		@sum_charge = Category.sum_income_or_charge(@categories, false)
		@balance = @sum_income - @sum_charge

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

end
