class Meeting < ActiveRecord::Base
  validates :name, :start_time, :end_time, presence: true
  belongs_to :event
  belongs_to :location
end
