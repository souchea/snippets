#
# Written by souche_a (^^,)
#

# Array class

# Creating arrays
months = Array.new #or
months = Array.new(12) #or
months = Array.new 12  #or

# Size
months.size #or 
months.length

# Clear
months.Clear # []
months.empty? # true

# Creating already filled Array
months = Array.new(12, "month") # ["month", ..., "month"]
num = Array.new(10) { |e| e = e * 2 } # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

months_abbrev = Array.[]( "Jan", ..., "Dec")
months_abbrev = Array.["Jan", ..., "Dec"]
months_abbrev = ["Jan", ..., "Dec"]

# Accessing elements
months_abbrev[0] # "Jan"
months_abbrev[-1] # "Dec"
months_abbrev[0..2] # ["Jan", "Fev", "Mar"]

months_abbrev.slice(1) # "Fev"
months_abbrev.slice(1, 2) # ["Fev", "Mar"]
months_abbrev.slice(1..3) # [Fev", "Mar", "Apr"]
months_abbrev.slice(1...3) # [Fev", "Mar"]

months_abbrev.first # "Jan"
months_abbrev.last # "Dec"

months_abbrev.first 2 # ["Jan", "Fev"]	# can add arg
months_abbrev.last 3 # ["Oct", "Nov", "Dec"]

# Get index
months_abbrev.index "Mar" # 2

# Test is element exists
months_abbrev.include? "Mar" # true
months_abbrev.include?( "Test" ) # false

# Concatenation
yrs = [1999]
yrs << 2000 # [1999, 2000]
yrs << 2001 << 2002 << 2003 # [1999, 2000, 2001, 2002, 2003]

q1 = %w[ January February March ]
q2 = %w[ April May June ]
half1 = q1 + q2 # [ "January", ..., "June" ]
half1 = q1.concat( q2 ) # [ "January", ..., "June" ]

# Set operations
tue = [ "shop", "work", "sleep"]
wed = [ "shop", "work", "read", "sleep"]
tue & wed # [ "shop", "work", "sleep"]
wed - tue # [ "read" ]
tue | wed # [ "shop", "work", "read", "sleep"]

# Stack operations
fruit = %w[ apple orange banana]
fruit.pop # "banana"
fruit # [ "apple", "orange"]
fruit.push "mango"
fruit # [ "apple", "orange", "mango"]

# Compare arrays
bob = [ "full", 40, "yes" ]
lou = [ "part", 23, "no" ]
tom = [ "full", 40, "yes" ]
bob == tom # true
bob == lou # false
lou <==> lou # 0
bob <==> lou # -1
lou <==> tom # 1