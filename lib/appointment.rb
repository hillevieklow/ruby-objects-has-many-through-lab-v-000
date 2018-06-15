class Appointment
  @@all = []

  def initialize(date)
    @date = date
    @@all << date
end
