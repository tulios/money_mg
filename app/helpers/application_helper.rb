# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	# Incluindo as classes extras do money mg
  include MoneyMg
  
	def currency(value)
		number_to_currency(value, :unit => "R$", :format => "%u %n")
	end

	def price_format(fields)
		js = ""
		fields.each do |field|
			js << %Q{
							$("#{'#'+field}").priceFormat({
									prefix: 'R$ ',
									centsSeparator: ',',
									thousandsSeparator: '.'
							});
						}
		end
		%Q{	
			<script type="text/javascript">
				$(document).ready (function() {
					#{js}
				});
			</script>
		}
	end

	def format_date(date)
		date.strftime("%d/%m/%Y")
	end

end
