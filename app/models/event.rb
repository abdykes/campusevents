class Event < ActiveRecord::Base
    validates :name, :start_date, :end_date, presence: true
    has_many :meetings
    has_many :subscriptions
    has_many :attendees, :through => :subscriptions
    has_and_belongs_to_many :sponsers
end
