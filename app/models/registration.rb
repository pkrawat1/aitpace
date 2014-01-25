class Registration < ActiveRecord::Base
  validates :name, :mob_no, :email, :branch, :year, :college, :event, :members, :staff_name, :staff_contact, :staff_email, presence: :true
  validates :mob_no, :staff_contact, length: {is: 10}, numericality: { only_integer: true, greater_than: 0}
  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :staff_email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :name, :members, :staff_name, numericality: false
end
