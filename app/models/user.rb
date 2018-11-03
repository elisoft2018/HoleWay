class User < ApplicationRecord

    has_many :privileges
    has_many :comments

    before_create ->{ self.token = generate_token }
    validates :enabled, inclusion: { in: [ true, false ] }
    private 
    def generate_token
        loop do 
            pre_token=SecureRandom.hex
            return pre_token unless User.exists?({token: pre_token})
        end
    end 

end
