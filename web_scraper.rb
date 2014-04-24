require 'open-uri'
drugs = ["drugs", "marijuana", "pharma"]
brands = ["Nike", "Reebok", "Adidas", "Gucci", "Chanel"]
other =  ["adult", "south", "e-cig", "nude", "e-currency", "exchanger", "debt collector" "currency exchanger"]

bad_words = other + drugs + brands

web_contents  = open("http://malehealthytouchclub.com/kink-lab/") { |f| f.read }

bad_words.each do |w|
  
  if web_contents.include?(w)
    puts w
   else
    "not found"
   end
end
