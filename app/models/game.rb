# == Schema Information
#
# Table name: games
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  initiator_id  :integer
#  challenger_id :integer
#  record        :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Game < ActiveRecord::Base
end
