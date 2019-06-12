class CreateDownvoteComments < ActiveRecord::Migration[5.2]
  def change
    create_table :downvote_comments do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :comment, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
