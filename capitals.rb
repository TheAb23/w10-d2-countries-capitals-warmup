# an array of countries hashes
countries =[
  
  {
    name: "Austria",
    capital: "Vienna"
}, {
    name: "Bahrain",
    capital: "Manama"
}, {
    name: "Belgium",
    capital: "Brussels"
}, {
    name: "China",
    capital: "Beijing"
}, {
    name: "Egypt",
    capital: "Cairo"
}, {
    name: "England",
    capital: "London"
}, {
    name: "France",
    capital: "Paris"
}, {
    name: "Germany",
    capital: "Berlin"
}, {
    name: "Hungary",
    capital: "Budapest"
}, {
    name: "India",
    capital: "New Delhi"
}, {
    name: "Indonesia",
    capital: "Jakarta"
}, {
    name: "Iraq",
    capital: "Baghdad"
}, {
    name: "Italy",
    capital: "Rome"
}, {
    name: "Japan",
    capital: "Tokyo"
}, {
    name: "Jordan",
    capital: "Amman"
}, {
    name: "Kuwait",
    capital: "Kuwait"
}, {
    name: "Lebanon",
    capital: "Beirut"
}, {
    name: "Malaysia",
    capital: "Kuala Lumpur"
}, {
    name: "Mexico",
    capital: "Mexico"
}, {
    name: "Netherlands",
    capital: "Amsterdam"
}, {
    name: "Oman",
    capital: "Muscat"
}, {
    name: "Pakistan",
    capital: "Islamabad"
}, {
    name: "Panama",
    capital: "Panama"
}, {
    name: "Qatar",
    capital: "Doha"
}, {
    name: "Russia",
    capital: "Moscow"
}, {
    name: "Saudi Arabia",
    capital: "Riyadh"
}, {
    name: "Spain",
    capital: "Madrid"
}, {
    name: "Sri Lanka",
    capital: "Colombo"
}, {
    name: "Switzerland",
    capital: "Bern"
}, {
    name: "Tunisia",
    capital: "Tunis"
}, {
    name: "United Arab Emirates",
    capital: "Abu Dhabi"
}, {
    name: "United Kingdom",
    capital: "London"
}, {
    name: "United States",
    capital: "Washington D.C."
}]



puts "Whats Your name?"
input =  gets.chomp
puts "***************"
puts "Who are you ?"
input =  gets.chomp
puts "Welcome "+input+" to the Game"
puts "***************"
counter = 0
trueanswer = 0
falseanswer = 0
newarr = countries.shuffle
tmparr = []
count = 0
loop do 
    newarr.length.times do |i|
    puts "What is the capital of this country"
    puts newarr[i][:name]
    puts newarr[i][:capital]
    input1 = gets.chomp
    if input1.upcase == newarr[i][:capital].upcase
        puts "true next"
        counter += 10
        trueanswer += 1
    else 
        puts "false"
        falseanswer += 1
        tmparr.push(newarr[i])
    end
end
puts "***************"
puts "do you wanna play agsin ? (y/n)"
if count == 1 
    newarr = countries.shuffle
else
    newarr = tmparr.shuffle
    count = 1
end
    input2 = gets.chomp
    break if input2 == "n"
end
puts "Your Score: #{counter}" 
puts "True Answers: #{trueanswer}" 
puts "False Answers: #{falseanswer} " 
puts "***************"