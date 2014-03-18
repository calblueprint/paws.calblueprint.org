class PawsUp < ActiveRecord::Base
  validates :description, presence: true
  validate :has_user_id_or_custom_for

  def has_user_id_or_custom_for
    if self.user_id.nil? && self.custom_for.empty?
      errors.add(:you, "must provide either a blooper or a custom group.")
    end
  end
end
