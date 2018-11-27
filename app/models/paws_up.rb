# == Schema Information
#
# Table name: paws_ups
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  from_user_id :integer
#  description  :text
#  created_at   :datetime
#  updated_at   :datetime
#  custom_for   :string
#  value        :string
#

class PawsUp < ActiveRecord::Base
  validates :description, presence: true
  validate :has_user_id_or_custom_for
  belongs_to :cycle

  def has_user_id_or_custom_for
    if self.user_id.nil? && self.custom_for.empty?
      errors.add(:you, "must provide either a blooper or a custom group.")
    end
  end

  def recipient
    if user_id.nil?
      custom_for
    else
      User.find(user_id).name
    end
  end

  def to_s
    "Paws Up to #{recipient} for #{description}" + value_string
  end

  private

  def value_string
    if value
      " (#{value})"
    else
      ""
    end
  end
end
