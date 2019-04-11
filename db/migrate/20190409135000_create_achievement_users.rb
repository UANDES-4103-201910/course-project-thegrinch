class CreateAchievementUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :achievement_users do |t|
      t.references :achievement, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
