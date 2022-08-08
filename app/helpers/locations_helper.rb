module LocationsHelper
  def address location
    "#{location.street}, #{location.city}, #{location.state}, #{location.zip}"
  end
end
