class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.string :name
      t.boolean :plus_one

      t.timestamps
    end
  end
end
