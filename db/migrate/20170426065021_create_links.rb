class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.column :username, :string
      t.column :description, :string

      t.timestamps
    end
  end
end
