class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    sum = 0.0
    values = subject_item.subject_item_notes
    return '0.00' if values.size == 0
    values.each do |var|
      sum += var.value
    end
    avg = sum / values.size
    avg.round(2).to_s.ljust(4, '0')
  end
end
