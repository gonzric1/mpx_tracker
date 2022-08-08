module ApplicationHelper
  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title = '')                     # Method def, optional arg
    base_title = "MPX Vaccine Tracker"  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      page_title + " | " + base_title                 # String concatenation
    end
  end

  def tel_to(phone_number)
    phone_number = number_to_phone(phone_number)
    link_to phone_number, "tel:#{phone_number}"
  end
end

