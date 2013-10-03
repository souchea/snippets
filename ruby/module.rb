#
# Written by souche_a(^^,)
#

# Modules
# see www.ruby-doc.org/core/classes/Module.html

module Dice # module definition
  def roll
    20
  end
end

#creation of class that uses a module
require 'dice'

class Game
  include Dice
  def test
    puts "trop cool"
  end
end
