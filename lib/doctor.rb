class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    appointments.collect {|appointment| appointment.doctor == self}
  end

end
