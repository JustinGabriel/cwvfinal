class AddIndexToSchoolUserId < ActiveRecord::Migration
  def change
      add_index :user_id
  end
end
