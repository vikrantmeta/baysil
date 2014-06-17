class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :degree
      t.string :university
      t.string :filed_of_study
      t.date :date_from
      t.date :date_to
      t.string :grade
      t.string :description
      t.belongs_to :user

      t.timestamps
    end
    add_index :educations, :user_id
  end
end
