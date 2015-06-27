Ticket.create(
  name: 'Petya',
  email: 'petya@roshen.com',
  department: 'fortune-teller',
  subject: 'oracle',
  request: 'When will I become a president? In first tour of elections, second tour or never'
  )

User.create(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
  )

status_titles = ['Новые не обработанные ', 'Открытые запросы', 'Запросы в ожидании', 'Закрытые запросы']

4.times do |i|
  Status.create({
    title: status_titles[i % status_titles.length],
  })
end
