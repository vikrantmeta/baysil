class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
    add_index :skills, :user_id
  end
end
