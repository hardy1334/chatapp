class Chat < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :subscriptions, dependent: :destroy

    has_many :users, through: :subscriptions
    validates :identifier, presence: true,:unique =>  true, case_sensitive: false 

end
