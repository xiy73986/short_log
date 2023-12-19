File.foreach(ARGV.first) do |line|
  line = line.gsub(/\(([^(]{90,})\)/) do |_|
    "(#{$1[0, 30]}...)"
  end
  puts line
end
