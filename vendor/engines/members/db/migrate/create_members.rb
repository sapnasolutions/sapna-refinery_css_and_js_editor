class CreateMembers < ActiveRecord::Migration

  def self.up
    create_table :members do |t|
      t.string :name
      t.integer :photo_id
      t.string :description
      t.integer :position

      t.timestamps
    end

    add_index :members, :id

    load(Rails.root.join('db', 'seeds', 'members.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "members"})

    Page.delete_all({:link_url => "/members"})

    drop_table :members
  end

end
