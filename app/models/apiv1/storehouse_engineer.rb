class Apiv1::StorehouseEngineer
  class << self
    def assign_dock(ticket)
      dock = Apiv1::Dock.free_docks.limit(1).first
      if dock.present?
        ticket.target_dock = dock.dock_number
      else
        ticket.notes = "no dock available currently"
      end
      ticket
    end
  end
end