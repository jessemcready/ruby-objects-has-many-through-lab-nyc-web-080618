class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end # new_appointment

  def appointments
    Appointment.all.select do |apt|
      apt.patient == self
    end # apt.all.select
  end # appointments

  def doctors
    appointments.map do |apt|
      apt.doctor
    end # apt.map
  end # doctors

end # class Patient
