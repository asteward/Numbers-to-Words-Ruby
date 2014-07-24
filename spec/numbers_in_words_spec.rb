require("rspec")
require("numbers_in_words")

describe("numbers_in_words") do
  it("takes a single digit number and converts it to a written word") do
    numbers_in_words(4).should(eq("four"))
  end

  it("takes a two-digit number and converts it to a written word") do
    numbers_in_words(24).should(eq("twenty four"))
  end

  it("takes a number between 100 and 999 and converts it to a written word") do
    numbers_in_words(300).should(eq("three hundred"))
  end

  it("Returns the written form of a number less than 10_000") do
    numbers_in_words(9_090).should(eq("nine thousand ninety"))
  end

  it("returns the written form of a number less than 100_000") do
    numbers_in_words(18_900).should(eq("eighteen thousand nine hundred"))
  end

  it("returns the written form of a number less than 1_000_000") do
    numbers_in_words(190_900).should(eq("one hundred ninety thousand nine hundred"))
  end

  it("returns the written form of a number less than 10_000_000") do
    numbers_in_words(8_900_700).should(eq("eight million nine hundred thousand seven hundred"))
  end

  it("returns the written form of a number less than 100_000_000") do
    numbers_in_words(18_900_700).should(eq("eighteen million nine hundred thousand seven hundred"))
  end

  it("returns the written form of a number less than 1_000_000_000") do
    numbers_in_words(180_900_550).should(eq("one hundred eighty million nine hundred thousand five hundred fifty"))
  end

  it("returns the written form of a number less than 10_000_000_000") do
    numbers_in_words(9_456_423_123).should(eq("nine billion four hundred fifty six million four hundred twenty three thousand one hundred twenty three"))
  end

  it("returns the written form of a number less than 100_000_000_000") do
    numbers_in_words(95_100_568_250).should(eq("ninety five billion one hundred million five hundred sixty eight thousand two hundred fifty"))
  end

  it("returns the written form of a number less than 1_000_000_000_000") do
    numbers_in_words(895_100_568_250).should(eq("eight hundred ninety five billion one hundred million five hundred sixty eight thousand two hundred fifty"))
  end
end
