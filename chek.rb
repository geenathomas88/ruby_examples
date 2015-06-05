require 'rubygems'
require 'zip/zipfilesystem'
Zip::ZipFile.open("my.zip", Zip::ZipFile::CREATE) {
   |zipfile|
    zipfile.get_output_stream("first.txt") { |f| f.puts "Hello from ZipFile" }
    zipfile.mkdir("a_dir")
path="/home/"
filename="date.rb"
	if filename.respond_to? :each_pair  # It's a subdirectory
            create_tree filename, path
          else # It's a file
            open(File.join(path, filename), 'w') { |f| f << contents|| "" }
          end
  }

