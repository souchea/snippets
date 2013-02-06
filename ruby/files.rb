#
# Written by souche_a (^^,)
#

# Files
#
# for more documentation see :
#       www.ruby-doc.org/core/classes/File.html
#

# Create file
File.new( "test.rb", "w" )

# Delete file
File.delete( "test.rb" )

# Opening file
file = File.open( "./ruby/files.rb" )
file.each { |line| print "#{file.lineno}. ", line}
if file.closed? == false then file.close end
