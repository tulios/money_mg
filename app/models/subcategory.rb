class Subcategory < ActiveRecord::Base
	# String: name
	# Category: category
	# Item: many: items

	belongs_to :category
	has_many :items, :dependent => :destroy,
					 :conditions => ["month(date) = ? and year(date) = ?", Date.current.month, Date.current.year]

	def sum
		sum = 0.0
		items.each {|item| sum += item.value}
		sum
	end

	def sum_for_month(month)
		list = []
		items.each do |item|
			if (item.date.strftime("%m") == month)
				list << item
			end
		end
		Item.sum(list)
	end

	def self.find_by_all_months_of_year(subcategories)
		subcategories.each do |subcategory|
			subcategory.items = 
								Item.all(:conditions => ["subcategory_id = ? and year(date) = ?", subcategory.id, Date.current.year])
		end
		subcategories
	end
end
