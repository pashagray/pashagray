require "ox"

file = File.open("./README.md")

file_data = file.read

# puts file_data

puts ENV["GEM_HOME"][0..5]
