#
# Written by souche_a (^^,)
#

# until statement

weight = 150
age = 10

until weight == 200 do
  puts "Weight: " + weight.to_s
  weight += 5
end

age += 1 until age > 28
