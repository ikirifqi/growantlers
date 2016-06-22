puts 'Deleting tables content...'
Admin.destroy_all
Team.destroy_all
Portfolio.destroy_all

puts 'Purging tables...'
ActiveRecord::Base.connection.tables.each do |t|
  if Rails.env.development?
    update_seq_sql = "UPDATE sqlite_sequence SET seq = 0 WHERE name = '#{t}';"
    ActiveRecord::Base.connection.execute(update_seq_sql)
  else
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end
end

puts 'Seeding admins...'
Admin.create(:email => 'admin@growantlers.com', :password => 'antlers2016')

puts 'Seeding teams...'
['Dadang Jebred', 'Usmed Munandar', 'Irfan Gordon', 'James Suhendar'].each do |name|
  Team.create(:name => name,
              :position => ['CEO', 'Designer', 'Cable Toucher', 'No Position', 'Gone'].sample,
              :description => 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.',
              :photo => 'x')
end

puts 'Seeding portfolios...'
['BoatFlow', 'TuckerBox', 'Weft Maritime', 'Aa Gym', 'Pineball Wooden Ball', 'Dadang Online Shop'].each do |title|
  Portfolio.create(:main_image => 'x',
                   :secondary_image => 'x',
                   :optional_image => 'x',
                   :title => title,
                   :main_description => 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.',
                   :brief_description => 'A brief description of the project.',
                   :client => ['Medium Rare', 'Dadang Rare', 'KiranaTama', 'Walden Global Services', '41SHITudio', 'Dadang Company'].sample,
                   :role => 'Designer, Slicing, Developer',
                   :agency => 'Growantlers',
                   :date => (DateTime.now - 5.days).to_date,
                   :left_description => 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.',
                   :right_description => 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
                   :team => Team.all.sample,
                   :footer_title => 'The Result',
                   :footer_description => 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.')
end
