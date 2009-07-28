class CategoriesChartController < ApplicationController

	def index
		@categories = Category.all(:order => "income desc")
	end

end
