#! rspec ./../tests/3-file-extension.rb

#
 # Returns the file extension of a filename.
 # @param {String} filename The string from which to extract the file extension
 # @returns {String} The file extension (with no period), or false if there is none.
#
def get_file_extension(filename)
  if filename.include? "."
    array = filename.split(".")
      if array.length == 1
        return array[0]
      else
        return array.last
      end
  else
    return false
  end
end
