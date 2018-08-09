class Doctor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end # new_appointment

  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
    end # Appointment.all
  end # appointments

  def patients
    appointments.map do |apt|
      apt.patient
    end # apt.map
  end # patients

end # class Doctor
