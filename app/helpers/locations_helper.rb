module LocationsHelper
  def address location
    "#{location.street}, #{location.city}, #{short_state(location.state)}, #{location.zip}"
  end
  def short_state state
    ::States.key(state)
  end
  def appointment_type(types)
    out = '<ul class="list-group list-group-flush">'
    types.each do |type|
      if type == "Walk-up"
        out << '<li class="list-group-item"> <i class="bi bi-clock"></i> Walk-Up </li>'
      elsif type == "Appointment Only"
        out << '<li class="list-group-item"> <i class="bi bi-calendar-event"></i> Appointment Only </li>'
      end
    end
    out << "</ul>"
    out.html_safe
  end
end
