module LocationsHelper
  def address location
    "#{location.street}, #{location.city}, #{::States.key(location.state)}, #{location.zip}"
  end

  def appointment_type(types)
    out = "<ul>"
    types.each do |type|
      if type == "Walk-up"
        out << '<li> <i class="bi bi-clock"></i> Walk-Up </li>'
      elsif type == "Appointment Only"
        out << '<li> <i class="bi bi-calendar-event"></i> Appointment Only </li>'
      end
    end
    out << "</ul>"
    out.html_safe
  end
end
