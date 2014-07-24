require('rspec')
require('numerals')

describe('convert') do
  it('returns the unique symbol associated with number') do
    convert(5).should(eq("V"))
  end
  it('returns the unique symbol associated with number') do
    convert(100).should(eq("C"))
  end
  it('returns the correct numerals if number has mutliple symbols') do
    convert(88).should(eq("LXXXVIII"))
  end
  it('returns the correct numerals if number has a four') do
    convert(44).should(eq("XLIV"))
  end
  it('returns the correct numerals if number has a nine') do
    convert(1994).should(eq("MCMXCIV"))
  end

end
