class AddNumberToPosts < ActiveRecord::Migration[5.2]
  def change
      add_column :posts, :number, :number
  end
end