class AddThisUrlToVisitor < ActiveRecord::Migration
  def change
    add_column :visitors, :this_url, :string
  end
end
