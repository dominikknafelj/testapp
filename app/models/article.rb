class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
    validates_associated :comments
	validates :title, presence: true,
                    length: { minimum: 5 }
end
