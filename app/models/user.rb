# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  username        :string(255)
#  tagline         :string(255)
#  age             :integer
#  gender          :string(255)
#  city            :string(255)
#  state           :string(255)
#  ethnicity       :string(255)
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :matches_initiated, :class_name => 'Match', :foreign_key => 'sender_id'
  has_many :matches_received, :class_name => 'Match', :foreign_key => 'receiver_id'
  has_many :messages_sent, :class_name => 'Message', :foreign_key => 'sender_id'
  has_many :messages_received, :class_name => 'Message', :foreign_key => 'receiver_id'
  has_many :photos
  has_many :questions
end
