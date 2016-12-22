class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false, default: ''
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
