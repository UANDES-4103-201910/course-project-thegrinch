class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.references :tagger
      t.references :tagged
      t.references :comment, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
