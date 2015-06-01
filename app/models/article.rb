class Article < ActiveRecord::Base
	validates :day, :month, :year, :title, :subtitle, :content, presence: true
end
