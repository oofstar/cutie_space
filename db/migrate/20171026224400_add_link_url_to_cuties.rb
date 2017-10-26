class AddLinkUrlToCuties < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :link_url, :string, default: ""
  end
end
