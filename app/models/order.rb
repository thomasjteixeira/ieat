class Order < ApplicationRecord
    belongs_to :products
    belongs_to :user

    enum status [:pending, :done]
end
