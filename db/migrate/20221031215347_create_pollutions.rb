class CreatePollutions < ActiveRecord::Migration[6.1]
  def change
    create_table :pollutions do |t|
      #t.string :registry
      t.string :place
      t.string :avtk
      t.string :address
      t.string :category
      t.string :xcoordinate
      t.string :ycoordinate
      t.string :type
      t.string :type_name
      t.timestamps
    end
  end
end
