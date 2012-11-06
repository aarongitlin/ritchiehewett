# A task to call the app every hour through the Scheduler addon for Heroku. 
# Copied from: http://beouk.blogspot.com.au/2012/02/keeping-heroku-awake.html
desc "This task is called by the Heroku cron add-on"
task :call_page => :environment do
   uri = URI.parse('http://www.ritchiehewett.com.au/')
   Net::HTTP.get(uri)
 end