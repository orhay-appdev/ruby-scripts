desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

  ap("File input is: " + text)
  ap("Character count (with spaces): #{text.length}")
  ap("Character count (without spaces): " + text.gsub(' ','').length.to_s)
  ap(special_word)
  ap (text)
  count_input = text.gsub(/[^a-z0-9\s]/i, "").split.count(special_word)
  ap(count_input)
end
