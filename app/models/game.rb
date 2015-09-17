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
  STATES = %w(WAITING, PLAYING, FINISHED)

  validates :initiator_id, :name, presence: true

  def self.eligible_games
    all.
    where("state != 'FINISHED'").
    select(:id, :name, :initiator_id, :challenger_id, :state)
  end
end
