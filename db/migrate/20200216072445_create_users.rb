class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.string :name, primary_key: true
      t.string :email
      t.string :password
      t.string :ph

      t.timestamps
    end
  end
end
