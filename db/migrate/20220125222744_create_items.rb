class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :date
      t.boolean :done
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
