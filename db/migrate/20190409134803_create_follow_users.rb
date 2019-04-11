class CreateFollowUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :follow_users do |t|
      t.references :follower
      t.references :followed

      t.timestamps
    end
  end
end
