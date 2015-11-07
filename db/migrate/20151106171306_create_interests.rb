class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.references :user
      t.references :topic
      t.timestamps null: false
    end
  end
end
