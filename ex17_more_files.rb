from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

in_data = open(from_file); txt = in_data.read
puts "Does the output file exists? #{File.exist? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort"
$stdin.gets

out_data = open(to_file, 'w')
out_data.write(txt)

puts "Alright, all done."
out_data.close
in_data.close