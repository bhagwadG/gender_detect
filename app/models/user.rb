class User < ActiveRecord::Base
  attr_accessible :gender, :weight, :height
  
  #   Validations of attributes
  validates :weight, :presence => true
  validates_numericality_of :weight, :only_integer => true, 
			    :message => ":can only be whole number."
  validates_inclusion_of    :weight, :in => 60..500, 
			    :message => ":can only be between 60 and 350 pounds."
  
  validates :height, :presence => true
  validates_numericality_of :height, :only_integer => true, 
			    :message => ":can only be whole number."
  validates_inclusion_of    :height, :in => 4..8, 
			    :message => ":can only be between 4 and 8 feet."
  
  validates :gender, :presence => true
  validates :gender, :inclusion => { :in => %w(male female),
	    :message => " :please enter either 'male' or 'female'" }
end
