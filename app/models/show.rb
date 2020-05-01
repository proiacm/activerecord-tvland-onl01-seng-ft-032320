class Show < ActiveRecord::Base
  belongs_to :network 
  has_many :characters
  has_many :actors, through: :characters 

  def actors_list 
    arr = []
    list = self.actors.pluck(:first_name, :last_name)
     arr << list.join(" ")
  end
end