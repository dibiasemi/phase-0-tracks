#This is a nested data structure the explains the breakdown of devbootcamp and the curriculum for each week

devbootcamp = {
  "phase_zero" => {
    'week1'=> 'Developer Tools',
    'week2'=> 'HTML',
    'week3'=> 'CSS',
    'week4'=> 'Ruby Basics',
    'week5'=> 'Ruby: Data Structures',
    'week6'=> 'Ruby: Classes',
    'week7'=> 'JavaScript',
    'week8'=> 'Databases',
    'week9'=> 'Pull it Together'
  },
  "on_site" => {
    'week1' => 'TBD'
  }
}

p devbootcamp['phase_zero']['week5']
p devbootcamp['phase_zero']['week9']='Almost done!!'

#When the time comes, I can update the On Site information:
p devbootcamp['on_site']['week1']='Something, something'
p devbootcamp['on_site']['week2']='TBD'
puts devbootcamp