User.create(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
  )

status_titles = ['Waiting for Staff Response', 'Waiting for Customer', 'On Hold', 'Cancelled', 'Completed']

5.times do |i|
  Status.create({
    title: status_titles[i % status_titles.length],
  })
end

Ticket.create(
  name: 'Petya',
  email: 'word_25@mail.ru',
  department: 'fortune-teller',
  subject: 'oracle',
  request: 'When will I become a president? In first tour of elections, second tour or never'
  )
