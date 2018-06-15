class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

end
