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

	def self.find_by_all_months(categories)
		categories.each do |category|
			category.subcategories = Subcategory.find_by_all_months_of_year(category.subcategories)
		end
		categories
	end

end
