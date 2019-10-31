class CreateMorningRoutineProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :morning_routine_products do |t|
      t.references :morning_routine, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
