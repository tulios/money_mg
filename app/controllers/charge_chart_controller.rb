class ChargeChartController < ApplicationController

	def index
		@charge_categories = Category.find_all_by_income(false)
	end

end
