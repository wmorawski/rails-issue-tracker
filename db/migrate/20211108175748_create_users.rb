class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :avatar_url

      t.timestamps
      t.index :email, name: "idx_user_email", unique: true
    end
  end
end
