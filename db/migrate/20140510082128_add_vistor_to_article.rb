class AddVistorToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :vistor, :integer, :default => 0
  end
end
