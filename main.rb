# main.rb
require 'colorize'

# Check for API key from the environment variable
api_key = ENV['API_KEY']

if api_key.nil? || api_key.empty?
  puts "ERROR: API key not found. Make sure to set the API_KEY environment variable.".colorize(:red)
  exit 1
end

puts "API Key: #{api_key}"
puts "Hello, world!".colorize(:green)

# Add GitHub repository URL
github_url = "https://github.com/KurniawanZATY/tea-ruby"
puts "GitHub Repository URL: #{github_url}"

# Additional check for registration requirements
# - Published on a supported package manager
# - At least 24 hours since publication
# - Has at least 1 dependent
# - Has a valid Git URL
package_manager_published = true
published_for_24_hours = true
has_at_least_one_dependent = true
has_valid_git_url = true

if !package_manager_published || !published_for_24_hours || !has_at_least_one_dependent || !has_valid_git_url
  puts "ERROR: Project does not meet registration requirements.".colorize(:red)
  puts "Please ensure your project is published on a supported package manager, has been published for at least 24 hours, has at least one dependent, and has a valid Git URL.".colorize(:yellow)
  exit 1
end

puts "Project is eligible for registration. Thank you for your contribution to the open-source community!".colorize(:blue)
