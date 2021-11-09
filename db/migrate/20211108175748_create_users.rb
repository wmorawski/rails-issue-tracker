class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :avatar_url

      t.timestamps
      t.index :email, name: "idx_user_email", unique: true
    end
  end
end
