require("rspec")
require("numbers_in_words")

describe("numbers_in_words") do
  it("takes a single digit number and converts it to a written word") do
    numbers_in_words(4).should(eq("four"))
  end
  it("takes a two-digit number and converts it to a written word") do
    numbers_in_words(24).should(eq("twenty four"))
  end
end
