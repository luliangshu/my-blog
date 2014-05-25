class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|

      t.string :ip
      t.string :city
      t.string :referer
      
      t.timestamps
    end
  end
end
