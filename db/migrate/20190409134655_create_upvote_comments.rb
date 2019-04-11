class CreateUpvoteComments < ActiveRecord::Migration[5.2]
  def change
    create_table :upvote_comments do |t|
      t.references :user, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
