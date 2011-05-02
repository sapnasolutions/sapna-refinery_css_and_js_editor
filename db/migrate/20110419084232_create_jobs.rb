class CreateJobs < ActiveRecord::Migration

  def self.up
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :apply_url
      t.integer :position

      t.timestamps
    end

    add_index :jobs, :id

    load(Rails.root.join('db', 'seeds', 'jobs.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "jobs"})

    Page.delete_all({:link_url => "/jobs"})

    drop_table :jobs
  end

end
