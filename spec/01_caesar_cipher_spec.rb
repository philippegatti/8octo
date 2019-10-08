require_relative '../lib/01_caesar_cipher'

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

describe "the one_letter_change method" do
    it "should return the letter in fct of the nb" do
        expect(translate_char("a", 5)).to eq("f")
        expect(translate_char("B", 3)).to eq("E")
        expect(translate_char("j", 0)).to eq("j")
        expect(translate_char("z", 3)).to eq("c")
    end
    it "should return the same number or special character" do
        expect(translate_char("!", 5)).to eq("!")
        expect(translate_char("3", 3)).to eq("3")
    end
    it "should return a error msg if the nb in not included btw 0-26" do
        expect(translate_char("a", -2)).to eq("warning 0-26")
        expect(translate_char("a", 27)).to eq("warning 0-26")
    end
end