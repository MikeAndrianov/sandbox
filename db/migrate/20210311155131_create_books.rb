class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :Book
      t.string :title

      t.timestamps
    end
  end
end
