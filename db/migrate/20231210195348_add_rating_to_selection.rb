class AddRatingToSelection < ActiveRecord::Migration[7.0]
  def change
    add_column :selections, :rating, :integer
  end
end
