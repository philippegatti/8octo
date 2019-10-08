def day_trader(pricing_list)
	value_list={}
	if pricing_list.all?{|i| i.is_a?(Integer)} == true
		for potential_buying_day in 0..(pricing_list.size-1)
			value_list=value_list.merge(max_value_given_buying_day(pricing_list,potential_buying_day))
		end
		puts "The best trade is to buy on day #{value_list.key(value_list.values.max)[0]+1} and to sell on day #{value_list.key(value_list.values.max)[1]+1}"
	else puts "wrong pricing_list"
	end
end

def max_value_given_buying_day(pricing_list,buying_day)
	value_list=[]
	potential_selling_day = 0
	for potential_selling_day in 0..(pricing_list.size-1)
		if potential_selling_day <= buying_day
			value_list << 0
		else
			value_list << pricing_list[potential_selling_day]-pricing_list[buying_day]
		end
	end
	return {[buying_day,value_list.index(value_list.max)] => value_list.max}
end

