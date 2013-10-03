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

# Rename file 
File.rename( "test.rb", "newtest.rb")

# See if file exist
File.exists?( "test.rb ") # true or false
File.file?( "test.rb ")

# Check rights of a file 
File.readable?( "test.rb ")
File.writable?( "test.rb ")
File.executable?( "test.rb ")

# Test is file empty
File.zero?( "test.rb ")

# Get file size
File.size?( "test.rb ")
File.size( "test.rb ")

# Some time info about file
File.ctime( "test.rb ") # created
File.mtime( "test.rb ") # last modified
File.atime( "test.rb ") # last accessed

# Change chmod and chown
file = File.open( "./ruby/files.rb" ).chmod( 0755 ) #link methods
file.chmod( 0644 ) #normal way
file.chown( 109, 3333 )
