['Apple', 'Misc', 'Pears', 'Photos', 'Tech'].each do |name|
  Category.find_or_create_by(name: name) do |category|
    puts "Adding Category: #{category}"
  end
end
