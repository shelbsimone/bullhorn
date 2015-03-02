class CreateDynamites < ActiveRecord::Migration
  def change
    create_table :dynamites do |t|
      t.text :content

      t.timestamps
    end
  end
end
