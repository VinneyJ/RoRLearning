class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.float :price
      t.boolean :leased
      t.date :due_date

      t.timestamps
    end
  end
end
