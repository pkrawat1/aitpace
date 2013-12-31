class Events < ActiveRecord::Base
  validates :name, :rules, :fees, :event_head_email, :event_head_mobile,:event_head_name, presence: :true
  validates :event_head_mobile, length: {is: 10}, numericality: { only_integer: true, greater_than: 0}
  validates :event_head_email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
end
