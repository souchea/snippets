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

# Listing files and dir inside directory
Dir.entries( "test" ).each { |e| puts e }
Dir.foreach( "test" ).each { |e| puts e }

# Using directory stream exemple
dir = Dir.open( "test" )	# #<Dir:0x12345678>
dir.path					# "test"
dir.tell					# "."
dir.read					# 1
dir.tell					# ".."
dir.rewind					# rewind to begin of the stream 
dir.each { |e| puts e}		# puts each entry in dir
dir.close					# close the stream
