class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :post, foreign_key: {on_delete: :cascade}
      t.string :content

      t.timestamps
    end
  end
end
