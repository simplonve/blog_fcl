class Article < ActiveRecord::Base
	has_many :comments
	validates :day, :month, :year,:content, presence: true
	validates :title, presence: true,
					length: { minimum: 12, maximum: 30, too_short: ": Votre titre est trop court", too_long: "Votre titre est trop long"}
	validates :subtitle, presence: true,
					length: { minimum: 12, too_short: "Votre sous-titre est trop court" }
end

