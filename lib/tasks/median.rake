desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  ap("Your numbers:")
  ap(numbers)
  sorted_numbers = numbers.sort
  if numbers.length%2 != 0
    median = numbers[(numbers.length/2) + 2]
    
  else
    middle = (numbers.length)/2
    median = (numbers[middle+1]+numbers[middle+2])/2
  end
  #  - otherwise
  #    - find the number to the left of the middle number
  #    - find the number to the right of the middle number
  #    - average the left and right numbers and save it as your median
  ap("Median: " + median.to_s)
end
