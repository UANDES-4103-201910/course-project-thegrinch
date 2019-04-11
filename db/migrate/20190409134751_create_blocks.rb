class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.references :owner
      t.references :blocked

      t.timestamps
    end
  end
end
