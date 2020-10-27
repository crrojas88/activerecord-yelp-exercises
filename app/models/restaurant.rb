class Restaurant < ActiveRecord::Base
    has_many :dishes
    has_many :tags, through: :dishes #review relationship

end