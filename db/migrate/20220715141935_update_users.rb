class UpdateUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_name, :string, null: false
    add_column :users, :accepted_terms_and_conditions, :boolean, null: false, default: false
  end
end
