class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.integer :number_of_books
      t.date :read_by

      t.timestamps
    end
  end
end
