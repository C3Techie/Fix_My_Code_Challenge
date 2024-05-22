###
# Sort integer arguments (ascending) 
###
#result = []

ARGV.each do |arg|
  # skip if not integer
  next if arg !~ /^-?[0-9]+$/

  # convert to integer
  i_arg = arg.to_i

  # insert result at the right position
  result.each_with_index do |r, i|
    if i_arg < r
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
  end

  result << i_arg if !is_inserted
end

puts result
