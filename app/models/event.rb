 class Event < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :user #added after seeing in treehouse version; works without on localhost 3/7
	acts_as_taggable
	acts_as_taggable_on :tag_list
	 
	validates :title, presence: true,
                    length: { minimum: 5 }
  validates :text, presence: true,
  								 length: { minimum: 2 }
 	validates :event_start, presence: true,
 										length: {minimum: 10}
  
end
