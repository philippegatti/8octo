def translate_char(character,key=0)
	if key >= 0 && key <=26
		if character.ord >=65 && character.ord <90-key
			character=(character.ord+key).chr
		elsif character.ord >=90-key && character.ord <= 90
			character=(64+character.ord+key-90).chr
		elsif character.ord >=97 && character.ord <122-key
			character=(character.ord+key).chr
		elsif character.ord >=122-key && character.ord <= 122
			character=(96+character.ord+key-122).chr
		else character=character
		end
		return character
	else return "warning 0-26"
	end
end

def caesar_cipher(message, key)
	if message.class == String
		splitted_message = message.chars
		return coded_message = splitted_message.map{|character| character = translate_char(character,key)}.join
	else return "attention il faut un string"
	end
end



