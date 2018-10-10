desc "Check if today is Friday"
task :tgif do
    today_day = Date.today.strftime("%a")
    if today_day == "Fri"
        ap "Yay, it's Friday!"
    elsif ap "Nope, not yet :/"
    end
    
end
