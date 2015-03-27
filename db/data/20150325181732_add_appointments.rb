class AddAppointments < SeedMigration::Migration
  def up
    Apiv1::Appointment.create! _appointments
  end

  def down
    _dateless_appointments.each do |hash|
      Apiv1::Appointment.where(hash).each &:destroy
    end
  end
  private
  def _dateless_appointments
    _appointments.map do |appointment|
      appointment.tap { |a| a.delete :expected_at }
    end
  end
  def _appointments
    (-10..10).map do |d|
      _appointment d
    end
  end
  def _appointment(d)
    {
      company: "Seed Test Company",
      notes: "This appointment is a generated seed test",
      material_description: "#{d} tons of dog food",
      expected_at: d.days.from_now
    }
  end
end
