class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string     :name
      t.belongs_to :folder
      t.timestamps
    end
  end
end
