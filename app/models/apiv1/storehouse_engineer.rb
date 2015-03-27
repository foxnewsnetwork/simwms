class Apiv1::StorehouseEngineer
  class << self
    def assign_dock(ticket)
      return ticket if ticket.target_dock.present?
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