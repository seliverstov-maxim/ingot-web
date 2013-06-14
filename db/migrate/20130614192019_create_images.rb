class CreateImages < ActiveRecord::Migration
  def up
    create_table :images do |t|
      t.string :name
      t.string :description
      t.string :tags
      t.string :user_agent
      t.integer :ip

      t.timestamps
    end
  end

  def down
    drop_table :images
  end
end
