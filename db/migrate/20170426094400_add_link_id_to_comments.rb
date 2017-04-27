class AddLinkIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :link_id, :int
  end
end
