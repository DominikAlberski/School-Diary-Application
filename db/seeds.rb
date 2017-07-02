puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
first_name = %w(Brat Albert Don Al Mourin Dugon Grot Wrot Bumble Zumble Sam Frodo Gandalf Godryk Gromir)
last_name = %w(Balony Felony Rapiki Momabe Zadrak Star Mort Wort Drumar Strider Writer Baggins Grey Gamgie)
subjects_titles = %w(Math Pol Geo Bio His Fiz Chem Int Eng Smg)
User.create!(email: 'admin@admin.com',password: 'adminadmin')

3.times do
  Teacher.create!(
    first_name: first_name.sample,
    last_name: last_name.sample,
    academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
20.times do
  SubjectItem.create!(
    title: subjects_titles.sample,
    teacher: teachers.sample
  )
end

25.times do
  Student.create!(
    first_name: first_name.sample,
    last_name: last_name.sample,
    birth_date: Date.today - rand(365*19..365*30)
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..4))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

puts "Seeds: done"
