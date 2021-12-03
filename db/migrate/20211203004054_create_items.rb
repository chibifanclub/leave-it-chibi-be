class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :toxicity
      t.string :treatment
      t.string :image

      t.timestamps
    end
  end
end
