#
# Written by souche_a (^^,)
#

# Directories
#
# for more documentation see :
#       www.ruby-doc.org/core/classes/Dir.html
#

# Repertoire courant
home = Dir.pwd
puts "le repertoire courant est: " + home

# Changer de repertoire
Dir.chdir( "." )

# Create and Delete folders
Dir.mkdir( "test.txt" , 755) # 755 is optional
Dir.rmdir( "test.txt" )


