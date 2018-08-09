require 'pry'
require_relative 'doctor'
require_relative 'patient'
class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

end # class Appointment


# doctor = Doctor.new("Joe")
# patient = Patient.new("Bob")
# apt = Appointment.new("Monday, August 1st", patient, doctor)
# binding.pry
