class RemoveDefaultAuthorFromPosts < ActiveRecord::Migration
  def self.up
    execute 'alter table posts alter author drop default'
    
  end

  def self.down
  end
end
