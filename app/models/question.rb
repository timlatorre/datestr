# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_text :string(255)
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
end
