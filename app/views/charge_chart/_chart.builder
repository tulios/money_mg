options = {
	:caption => "Para onde vai o meu dinheiro? #{Date.current.month}/#{Date.current.year}",
	:showNames => 1,
	:decimalPrecision => 2,
	:numberPrefix => "R$ ",
	:formatNumber => 1,
	:thousandSeparator => ",",
	:decimalSeparator => "."
}

xml = Builder::XmlMarkup.new(:indent => 0)
xml.graph(options) do
	@charge_categories.each do |category|

		xml.set(
			:name => category.name, 
			:value => category.sum_for_month("%02d" % Date.current.month),
			:color => get_FC_color
		 )
	end
end
