class CreateTestapps < ActiveRecord::Migration[6.0]
  def change
    create_table :testapps do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
