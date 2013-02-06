#
# Written by souche_a (^^,)
#

# Classes

# Basic class
class Hello
  def initialize(name) # constructor
    @name = name # set this.name a la valeur donne en parametre
  end
  def hello_matz
    puts "Hello, " + @name + "!"
  end
end

# Extension class
class Array # extension de la classe Array builtin
  def array_of_ten
    (1..10).to_a
  end
end

# Getter / Setter simple class
class Horse
  def name
    @name # getter
  end
  def name=(value)
    @name = value # setter
  end
end

# Getter/Setter in one line with accessors
class Dog
  attr :bark, true # getter and setter in one line
end

# even better
class Gaits
  attr_accessor :walk, :trot, :canter
end

# Global class variable
class Repeat
  @@total = 0 # global class variable
  def initialize(string, times)
    @string = string
    @times = times
  end
  def repeat
    @@total += @times
    return @string * @times
  end
  def total
    "Total times: " + @@total.to_s
  end
end

# Singletons
# see www.ruby-doc.org/core/classes/Singleton.html
class Area
  class << self # creation class singleton
    def rect(lenght, width, units="inches")
      area = length * width
      puts area.to_s
    end
  end
end

# Inheritance
class Name #parent class
  attr_accessor :given_name, :family_name
end
# require Name //if in different file
class Adress < Name #child class
  attr_accessor :street, :city, :state, :country
end

#public, private and protected
class Names
  attr_accessor :given, :family, :nick, :pet
  def initialize(given, family, nick, pet)
    @given = given
    @family = family
    @nick = nick
    @pet = pet
  end
  #public par defaut
  def test
    puts "je fais un test"
  end
  private #following methods become private
  def autre_method
    puts "methode privee"
  end
  protected #following methods become protected
  def prot_method
    puts "methode protegee"
  end
end
