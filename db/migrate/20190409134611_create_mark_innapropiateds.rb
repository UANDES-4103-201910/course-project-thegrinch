class CreateMarkInnapropiateds < ActiveRecord::Migration[5.2]
  def change
    create_table :mark_innapropiateds do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :post, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
