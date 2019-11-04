class CreateListProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :list_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.boolean :purchased

      t.timestamps
    end
  end
end
