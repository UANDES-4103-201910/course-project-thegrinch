class CreateAchievementUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :achievement_users do |t|
      t.references :achievement, foreign_key: {on_delete: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
