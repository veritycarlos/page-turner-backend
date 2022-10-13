# validation - when it comes to models is making sure everything is in there the way we want it to be
# validates :name, presence: true means you cannot create an author without a name. If you did ...,length: {min: 3} a name would have to be a min of 3 characters
# you could swap min for max and make it where it can't go past a certain charater limit
# you could do ....,uniqueness: true to make it have to be unique. This is like having a unique username
# if you tried to add a duplicate name it would say id:nil it didn't save, but wouldn't say why, if you want to see why, you could type: reader.errors.full_messages, and it will tell you why
# ^you would type and see the messages in rake console/pry and also save ex: reader = _ , to see the messages, you could also write reader.valid? or reader.saved and it will say false beccause there was a validation issue. )

class Reader < ActiveRecord::Base
    has_many :books, dependent: :destroy

    validates :name, presence: true
end