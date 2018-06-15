class Appointment
  @@all = []

  attr_accessor :date

  def initialize(date)
    @date = date
    @@all << date
end
