class LinkedListItem
  include Comparable
  attr_accessor :payload
  attr_accessor :next_list_item

  def initialize(payload)
    @payload = payload
  end

  def next_list_item=(linked_list_item)
    raise ArgumentError, "Can't set to self" if linked_list_item == self
    @next_list_item = linked_list_item
  end

  def last?
    next_list_item.nil?
  end

  def <=> other
    self.payload.to_s <=> other.payload.to_s
  end

  def === other
    self.object_id == other.object_id
  end

end
