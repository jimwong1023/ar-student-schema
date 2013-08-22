require 'pry'
require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  # attr_accessor :name, :age

  validates :email, format: { with: /\w+@\w+\.\w{2,}/ }
  validates :email, uniqueness: true
  validates_exclusion_of :age, in: 0..5 
  validates :phone, format: { with: /.*\(?\d{3}\)?.?\d{3}.?\d{4}.*/ }
  # validates :email, format: { with: /\w+\S*@\w+[\.]\w{2,}/i }
  # validates :first_name, presence: true
  # validates :last_name, presence: true

  # validates :email, uniqueness: true
  # validates :email, format: { with: /\w+\S*@\w+[\.]\w{2,}/i }
  # validates :age, numericality: { greater_than_or_equal_to: 5 }
  # validates :phone, format: { with: /\(?\d{3}\)?[-.\s]\d{3}[-.\s]\d{4}\s?x?\d*/ }



  # attr_reader :first_name, :last_name, :gender, :birthday, :email, :phone

  # def initialize
    
  # end

  # def assign_attributes(attributes = {})
  #   @first_name = attributes[:first_name]
  #   @last_name = attributes[:last_name]
  #   @gender = attributes[:gender]
  #   @birthday = attributes[:birthday]
  #   @email = attributes[:email]
  #   @phone = attributes[:phone]
  # end

  def name
    name = "#{first_name} #{last_name}"
    name
  end

  def age
    # binding.pry
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)  # age
  end


end

