desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  ap("Your numbers:")
  ap(numbers)
  minimum = numbers[0]
  numbers.each do |num|        
  if num < minimum
    minimum = num
  end
end
  ap("Minimum: " + minimum.to_s)
end
