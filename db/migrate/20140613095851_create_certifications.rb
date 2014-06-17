class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :authority
      t.string :license_number
      t.string :certification_link
      t.date :date_from
      t.date :date_to
      t.belongs_to :user

      t.timestamps
    end
    add_index :certifications, :user_id
  end
end
