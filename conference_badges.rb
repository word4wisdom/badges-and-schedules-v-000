class HotelEvent

  def badge_maker(name)
    "Hello, my name is #{name}."
  end

  def attendees
    @attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
  end

  def batch_badge_creator
    @badges = @attendees.map {|x| badge_maker(x)}
  end

  def assign_rooms
    @room_assignments = @attendees.map.with_index {|attendee, room| "Hello #{attendee}! You will be assigned to room #{room+1}!"}
  end

  def print_badges
    @badges.each {|b| puts b}
  end

  def print_room_numbers
    @room_assignments.each {|r| puts r}
  end

  def print_all
    print_badges
    print_room_numbers
  end

end

new_event = HotelEvent.new
new_event.attendees
new_event.batch_badge_creator
new_event.assign_rooms
new_event.print_all

#output first the results of the
# batch_badge_creator method and then
# of the assign_rooms method to the screen.
# this way you can output
# the badges and room assignments one at a time.
# To make this test pass, make sure you are iterating through your badges and room assignments lists.
 #output first the results of the batch_badge_creator method and then of
 #the assign_rooms method to the screen.
