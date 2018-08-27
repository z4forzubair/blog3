class Article < ApplicationRecord
	#attr_accessible :title, :text
	validates :title, presence: true,
                    length: { minimum: 5 }
end
