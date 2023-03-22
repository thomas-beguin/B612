Project.destroy_all

puts 'Creating projects'
i = 1
10.times do
  Project.create!(title: "project##{i}", description: "description of the project")
  i += 1
end
