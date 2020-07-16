require "ox"

file = File.open("./README.md")

file_data = file.read

# puts file_data

puts ENV["DEV_TO_API_KEY"][0..5]
