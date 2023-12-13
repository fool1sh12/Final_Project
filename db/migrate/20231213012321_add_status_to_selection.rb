class AddStatusToSelection < ActiveRecord::Migration[7.0]
  def change
    add_column :selections, :status, :string
  end
end
