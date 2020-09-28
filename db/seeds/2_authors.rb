Author.find_or_create_by!(name: 'Mike McWriter') do |author|
  puts "Adding Author: #{author}"
end
