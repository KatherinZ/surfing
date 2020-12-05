class CreateDislikes < ActiveRecord::Migration[6.0]
  def change
    create_table :dislikes do |t|
      t.references :post, null: false, foreign_key: true
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
