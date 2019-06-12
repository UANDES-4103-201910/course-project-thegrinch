class CreateDownvotePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :downvote_posts do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :post, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
