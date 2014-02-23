class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.belongs_to :Attendee
      t.belongs_to :Event

      t.timestamps
    end
  end
end
