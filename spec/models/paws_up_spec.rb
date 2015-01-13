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

require 'spec_helper'

describe PawsUp do
  pending "add some examples to (or delete) #{__FILE__}"
end
