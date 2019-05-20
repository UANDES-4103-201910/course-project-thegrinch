class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password
      t.string :role
      t.string :name
      t.string :last_name
      t.string :bio
      t.string :location
      t.string :geofence
      t.string :profession

      t.timestamps
    end
  end
end
