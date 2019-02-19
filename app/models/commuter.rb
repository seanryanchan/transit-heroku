  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 1/28/2019 - Sean Chan - Initial File
  # 2.0 - 1/28/2019 - Sean Ryan Chan - Added specific attributes to Commuters on the database
  # 2.1 - 2/7/2019 - Michael Marrero - Edited Comments, Added Comment block for detailed information regarding the software.

  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their 
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

class Commuter < ApplicationRecord
  # The following lines of code verify the attributes of a 'Commuter' in the database
  #    A commuter can have nabe Favorite New Groups
  #    Makes emails lowercased
  #    Validation of the name, email, and password of the Commuter
  #    Password of the commuter must be secure
  has_many :favorites, dependent: :destroy
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 6}, presence: true
  has_secure_password
end
