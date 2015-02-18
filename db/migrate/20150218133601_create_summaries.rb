class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.string :name
      t.boolean :public, default: true
      t.integer :post_id

      t.timestamps null: false
    end
    add_index :summaries, :post_id
  end
end
