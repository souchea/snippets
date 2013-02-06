#
# Written by souche_a (^^,)
#

# case statement

lang = "fr"

dog = case lang
       when "en": "dog"
       when "es": "perro"
       when "fr": "chien"
       when "de": "Hund"
       else "dog"
      end

scale = 8

case scale
 when    0: puts "lowest"
 when 1..3: puts "medium"
 when 4..9: puts "high"
 when   10: puts "highest"
 else       puts "off scale"
end
