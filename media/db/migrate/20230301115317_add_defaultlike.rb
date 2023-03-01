class AddDefaultlike < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:posts, :like, from: nil, to: 0)
  end
end
