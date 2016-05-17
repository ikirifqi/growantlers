puts 'Deleting tables content...'
Admin.destroy_all

puts 'Purging tables...'
ActiveRecord::Base.connection.tables.each do |t|
  if Rails.env.development?
    update_seq_sql = "UPDATE sqlite_sequence SET seq = 0 WHERE name = '#{t}';"
  else
    update_seq_sql = "ALTER TABLE #{t} AUTO_INCREMENT = 1"
  end
  ActiveRecord::Base.connection.execute(update_seq_sql)
end

puts 'Seeding admins...'
Admin.create(:email => 'admin@growantlers.com', :password => 'antlers2016')
