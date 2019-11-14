class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :diary, null: false, foreign_key: true
      t.text :routine_type
      t.text :content
      t.integer :skin_score
      t.timestamps
    end
  end
end
