# main.rb
require 'colorize'

# Accessing the API key from the environment variable
api_key = ENV['API_KEY']

puts "API Key: #{api_key}"
puts "Hello, world!".colorize(:green)

# Add GitHub repository URL
github_url = "https://github.com/#{ENV['GITHUB_REPOSITORY']}"
puts "GitHub Repository URL: #{github_url}"
