class RemoveImageAndAddFacebookPath < ActiveRecord::Migration
  def self.up
    add_column :members, :facebook_path, :string
    remove_column :members, :photo_id
  end

  def self.down
    add_column :members, :photo_id, :integer
    remove_column :members, :facebook_path
  end
end
