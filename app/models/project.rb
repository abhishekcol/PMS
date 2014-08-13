class Project < ActiveRecord::Base
  validates :projectname, presence: true, length: {minimum: 2}
  validates :teamleader, presence: true, length: {minimum: 2}

end
