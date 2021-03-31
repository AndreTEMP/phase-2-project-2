class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders
    has_secure_password
    validates :username, uniqueness: true
    validates :balance, numericality: {greater_than_or_equal_to: 0}
    validates :reward_points, numericality: {greater_than_or_equal_to: 0}

    # def add_money(amount)
    #     new_amount = self.balance + amount
    #     self.update({balance: new_amount})
    # end
        

end
