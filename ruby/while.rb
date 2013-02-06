#
# Written by souche_a (^^,)
#

# while statement

i = 0
breeds = [ "quarter", "arabian", "appalosa", "paint" ]
temp = []

while i < breeds.size do
  temp << breeds[i].capitalize
  i += 1
end

temp = 98.3

begin
  print "Your temperature is " + temp.to_s + " Fahrenheit. "
  puts "I think you're okay."
  temp += 0.1
end while temp < 98.6

cash = 100_000.00
sum = 0

cash += 1.00 while cash < 1_000_000.00
