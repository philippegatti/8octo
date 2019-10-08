def is_multiple_of_3_or_5?(current_number)
	current_number %3==0 || current_number %5==0
end

def sum_of_3_or_5_multiples(final_number)
	sum=0
	i=1
	if (final_number.class == Integer) && (final_number < 1000) && (final_number >= 0)
		(final_number-1).times do
			if is_multiple_of_3_or_5?(i) == true
				sum = sum +i
			else
				sum=sum
			end
			i+=1
		end
		return sum
	else return false
	end
end