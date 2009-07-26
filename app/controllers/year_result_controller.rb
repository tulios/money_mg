class YearResultController < ApplicationController

	def index
    @categories = Category.all(:order => "income desc")
		Category.find_by_all_months(@categories)

		@sum_income = Category.sum_income_or_charge(@categories, true)
		@sum_charge = Category.sum_income_or_charge(@categories, false)
		@balance = @sum_income - @sum_charge

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

end
