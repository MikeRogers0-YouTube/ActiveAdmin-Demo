AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin_user|
  puts "Adding AdminUser: #{admin_user}"
  admin_user.password = '12345678'
  admin_user.password_confirmation = '12345678'
end if false
