require_relative '../lib/02_jean_michel_trader'

describe "the caesar_cipher method" do
    it "should return the string with the letters that change in fct of the nb" do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
        expect(caesar_cipher("aBc efG3", 3)).to eq("dEf hiJ3")
    end
    it "should return the string of error if it s not a string" do
        expect(caesar_cipher(555, 5)).to eq("attention il faut un string")
        expect(caesar_cipher(5.55, 5)).to eq("attention il faut un string")
        expect(caesar_cipher([1,2], 5)).to eq("attention il faut un string")
    end
end