require_relative "room"

class Hotel
  def initialize(name, hash)
    @name = name
    @rooms = {}
    hash.each_key { |k| @rooms[k] = Room.new(hash[k]) } #nImportant
  end

  def name
    new_name = @name.split(" ").map { |word| word.capitalize}
    new_name.join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(room_name)
    @rooms.has_key?(room_name)
  end

  def check_in(person, room_name)
    if !self.room_exists?(room_name)
        p "'sorry, room does not exist"
        return
    end
    if @rooms[room_name].add_occupant(person) # Important
        p "check in successful"
    else
        p "sorry, room is full"
    end
  end

  def has_vacancy?
    @rooms.each_key do |room_name|
        return true if ! @rooms[room_name].full?
    end
    false
  end

  def list_rooms
    @rooms.each_key do |room_name|
        print room_name + ".*" + @rooms[room_name].available_space.to_s + "\n"
    end
  end
end
