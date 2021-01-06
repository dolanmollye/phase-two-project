class CreatePantries < ActiveRecord::Migration[6.1]
  def change
    create_table :pantries do |t|
      t.string :name

      t.timestamps
    end
  end
end
