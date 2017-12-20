# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#below sorts all files within db/seeds folder
#alphabetically and loads each seed file into the database,
#thus seeding the database with screenplays
#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
#  load seed
#end
### note: don't need above if no other rb files within db/seeds folder besides this file.


### below loads all files in seeds/01_plots_horror
# Dir[File.join(Rails.root, 'db', 'seeds/folder_name_here', '*.rb')].sort.each do |seed|
#   load seed
# end

#### below loads all .rb files within folders within db/seeds folder
Dir[File.join(Rails.root, 'db', 'seeds/*', '*.rb')].sort.each do |seed|
  load seed
end
