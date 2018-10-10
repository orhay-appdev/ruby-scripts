desc "Print today's date"
task :todays_date do
    today = Date.today.strftime("%a, %e %b %Y")
    puts today
end
