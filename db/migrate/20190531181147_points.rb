class Points < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :points, :integer

  end
end
