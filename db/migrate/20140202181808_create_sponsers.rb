class CreateSponsers < ActiveRecord::Migration
  def change
    create_table :sponsers do |t|
      t.string :name
      t.string :url
      t.string :logo

      t.timestamps
    end
  end
end
