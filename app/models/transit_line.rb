  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/5/2019 - Menard Cruz - Initial File
  # 2.0 - 2/7/2019 - Sean Chan - Made Entity relationships.
  # 2.1 - 2/7/2019 - Michael Marrero - Edited Comments, Added Comment Block that gives detailed information on the software.
  # 3.0 - 3/4/2019 - Michael Marrero - Added Search function for Search query on Transit Lines

  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their 
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

class TransitLine < ApplicationRecord
  has_and_belongs_to_many :transit_stops
  has_and_belongs_to_many :favorites
end
