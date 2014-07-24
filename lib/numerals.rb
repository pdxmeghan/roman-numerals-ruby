def convert(score)
  results = []
    numerals = ["M", "D", "C", "L", "X", "V", "I"]
    numbers = [1000,500,100,50,10,5,1]
    fournumerals = ["CD", "XL", "IV"]
    fournumbers = [400,40,4]
    ninenumerals = ["CM", "XC", "IX"]
    ninenumbers = [900,90,9]
  for i in 1..15
    #four stuff
    if score.to_s[0,1] == "4"
    fournumbers.each do |fonumber|
      if score >= fonumber
      results.push fournumerals[fournumbers.index(fonumber)]
      score -= fonumber
      break
      end
    end
    #nine stuff
    elsif score.to_s[0,1] == "9"
    ninenumbers.each do |ninumber|
      if score >= ninumber
      results.push ninenumerals[ninenumbers.index(ninumber)]
      score -= ninumber
      break
      end
    end
    #other stuff
    else numbers.each do |number|
      if score >= number
      results.push numerals[numbers.index(number)]
      score -= number
      break
      end
    end
  end
end
    results.join("")
end

puts convert(88)
