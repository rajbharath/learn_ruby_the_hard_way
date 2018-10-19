dir_name, search_string, replace_string = ARGV
files_in_dir = Dir.entries(dir_name)

files_in_dir.each do |file_name|
  if file_name.include? search_string
    puts "#{file_name} - renamed to #{file_name.sub search_string, replace_string}"
    File.rename(file_name, file_name.sub(search_string, replace_string))
  end
end
