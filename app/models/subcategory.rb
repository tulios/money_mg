class Subcategory < ActiveRecord::Base
	# String: name
	# Category: category

	belongs_to :category
           
  def items=(items)
    @items = items
  end
  
  def items
    if @items.nil?
      @items = []
    end
    @items
  end          
      
	def sum
		sum = 0.0              
		items.each {|item| sum += item.value}
		sum
	end

	def sum_for_month(month)
		list = []
		items.each do |item|
			if (Formater::extract_month(item.date) == month)
				list << item
			end
		end
		Item.sum(list)
	end
	
end
