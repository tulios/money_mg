class Item < ActiveRecord::Base
	# Subcategory: subcategory
	# String: name
	# Text: description
	# Date: date
	# Decimal: value	
 
	belongs_to :subcategory

	def self.sum(items)
		sum = 0.0
		items.each {|item| sum += item.value}
		sum
	end

end
