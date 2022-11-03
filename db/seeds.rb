# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', '/home/me/Ruby_Project/lib/seeds/pppv_zemes-portalam_18072019_lvgmc.csv'))
csv = CSV.parse(csv_text, col_sep: ';' , :headers => true, :encoding => 'UTF-8' )
csv.each do |row|
  #puts row
  t = Pollution.new
  #t.registry = row['registry']
  t.place = row['place']
  t.avtk = row['avtk']
  t.address = row['address']
  t.category = row['category']
  #t.pollution_type = row['pollution_type']
  t.xcoordinate = row['xcoordinate']
  t.ycoordinate = row['ycoordinate']
  t.pol_type = row['pol_type']
  t.type_name = row['type_name']
  t.save
  #puts "\n"
end

#puts csv_text