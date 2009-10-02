options = {
	:caption => "#{category.name} - #{@month}/#{@year}", 
	:showNames => 1,
	:decimalPrecision => 2,
	:numberPrefix => "R$ ",
	:formatNumber => 1,
	:thousandSeparator => ",",
	:decimalSeparator => "."
}

xml = Builder::XmlMarkup.new(:indent => 0)
xml.graph(options) do
	category.subcategories.each do |subcategory|

		xml.set(
			:name => subcategory.name, 
			:value => subcategory.sum_for_month("%02d" % @month), # Converte para 2 casas sempre: 1 = 01
			:color => get_FC_color
		 )
	end
end
