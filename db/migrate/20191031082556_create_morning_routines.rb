class CreateMorningRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :morning_routines do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
