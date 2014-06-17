class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :proficincy
      t.belongs_to :user

      t.timestamps
    end
    add_index :languages, :user_id
  end
end
