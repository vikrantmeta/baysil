class CreateExpriences < ActiveRecord::Migration
  def change
    create_table :expriences do |t|
      t.string :compnay_name
      t.string :designation
      t.string :location
      t.date :time_from
      t.date :time_to
      t.boolean :currently_working
      t.string :link
      t.string :upload_file
      t.belongs_to :user

      t.timestamps
    end
    add_index :expriences, :user_id
  end
end
