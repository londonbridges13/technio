require 'net/http'

# namespace :ping do
#   desc "Ping our heroku dyno every 10, 60 or 3600 min"
task :ping do
  puts "Making the attempt to ping the dyno"

  if ENV['URL']
    puts "Sending ping"

    uri = URI(ENV['URL'])
    Net::HTTP.get_response(uri)

    puts "success..."
    ContentWorker.perform_async(id) # automatically adds new content
  end
end
# end
