class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :username
      t.string :real_name
      t.string :profile_picture
      t.string :location
      t.integer :age
      t.string :gender
      t.integer :playcount

      t.timestamps
    end
  end
end
