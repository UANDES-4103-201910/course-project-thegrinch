class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.string :title
      t.string :description
      t.string :location
      t.boolean :dumped
      t.integer :grinchrate

      t.timestamps
    end
  end
end
