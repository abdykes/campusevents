class CreateEventsSponsers < ActiveRecord::Migration
  def change
    create_table :events_sponsers, id: false do |t|
      t.belongs_to :event
      t.belongs_to :sponser
    end
  end
end
