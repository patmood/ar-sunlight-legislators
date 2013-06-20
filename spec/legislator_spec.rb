require_relative '../app/models/legislator'

# puts "Number of records: #{Legislator.count}"

# def senators_by_state(state,title)
#   Legislator.where('state = ? AND title = ? AND in_office = 1',state,title)
# end

# puts senators_by_state('IL','Sen').map {|senator| senator.summary}



# def sens_and_reps_by_state(state)
#   pollies = []
#   pollies << ["Senators:"]
#   pollies << Legislator.where('state = ? AND title = "Sen" AND in_office = 1',state).map {|person| person.summary}
#     pollies << ["Representatives:"]
#   pollies << Legislator.where('state = ? AND title = "Rep" AND in_office = 1',state).map  {|person| person.summary}
#   pollies
# end

# puts sens_and_reps_by_state('NY')


# def representation(gender)
#   str = ""
#   if gender == 'M'
#     str += "Male Senators: "
#   elsif gender == 'F'
#     str += "Female Senators: "
#   else
#     raise "Incorrect Gender, check that shit"
#   end

#   str += ((Legislator.where('gender = ? AND title = "Sen" AND in_office = 1',gender).count.to_f)/Legislator.where('title = "Sen" AND in_office = 1').count.to_f*100).round.to_s
#   str += "%\n"

#   if gender == 'M'
#     str += "Male Representatives: "
#   elsif gender == 'F'
#     str += "Female Representatives: "
#   else
#     raise "Incorrect Gender, check that shit"
#   end

#   str += ((Legislator.where('gender = ? AND title = "Rep" AND in_office = 1',gender).count.to_f)/Legislator.where('title = "Rep" AND in_office = 1').count.to_f*100).round.to_s
#   str += "%\n"

# end

# puts representation('M')


def active_by_state
  
end

puts active_by_state






























