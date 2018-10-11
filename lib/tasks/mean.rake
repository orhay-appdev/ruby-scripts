desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  ap("Your numbers:")
  ap(numbers)
  sum = 0
  numbers.each do |num|        
  sum = sum + num
  end
  ap("Mean: " + (sum/(numbers.length)).to_s)
end

