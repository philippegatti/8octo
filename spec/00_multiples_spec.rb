require_relative '../lib/00_multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(22)).to eq(false)
    expect(is_multiple_of_3_or_5?(37)).to eq(false)
    expect(is_multiple_of_3_or_5?(61)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples method" do
  it "should return an integer when the input is right" do
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(6)).to eq(8)
    expect(sum_of_3_or_5_multiples(14)).to eq(45)
    expect(sum_of_3_or_5_multiples(2)).to eq(0)
  end

  it "should return false when the input is not an integer<1000" do
	expect(sum_of_3_or_5_multiples("2")).to eq(false)
	expect(sum_of_3_or_5_multiples([3,4])).to eq(false)
	expect(sum_of_3_or_5_multiples(2000)).to eq(false)
	expect(sum_of_3_or_5_multiples(-3)).to eq(false)
  end
end