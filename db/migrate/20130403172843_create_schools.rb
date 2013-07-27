class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :user_id
      t.string :college
      t.string :major
      t.string :student
      t.integer :date

      t.timestamps
    end
      add_index :user_id
  end
end
