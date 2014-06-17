class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :occupation
      t.date :date_from
      t.date :date_to
      t.integer :team_size
      t.belongs_to :user

      t.timestamps
    end
    add_index :projects, :user_id
  end
end
