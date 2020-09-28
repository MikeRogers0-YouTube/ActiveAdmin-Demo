require 'faker'

['Some Event', 'Apple Announcements', 'Another Post', 'New eWatch'].each do |title|
  Post.find_or_create_by(title: title, author: Author.first) do |post|
    puts "Adding Post: #{post} by #{post.author}"
    post.body = Faker::Lorem.paragraphs(number: 3).join("\n")
    post.categories = Category.all.shuffle[0..1]
  end
end
