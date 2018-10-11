desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  minimum = numbers[0]
  numbers.each do |num|        
  if num < minimum
    minimum = num
  end
end
  
  maximum = numbers[0]
  numbers.each do |num2|        
  if num2 > maximum
    maximum = num2
  end
end
  
  ap("Your numbers:")
  ap(numbers)
  ap("Range: " + (maximum-minimum).to_s)

end
