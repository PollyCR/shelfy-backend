class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.references :user, null: false, foreign_key: true
      t.string :routine_type

      t.timestamps
    end
  end
end
