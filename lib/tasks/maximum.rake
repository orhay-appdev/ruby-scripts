desc "Calculate maximum"
task :maximum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  ap("Your numbers:")
  ap(numbers)
  maximum = numbers[0]
  numbers.each do |num|        
  if num > maximum
    maximum = num
  end
end
  ap("maximum: " + maximum.to_s)
end

