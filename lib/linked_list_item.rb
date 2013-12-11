class LinkedListItem

  attr_reader :next_list_item

  def initialize(payload)

  end

  def payload
    'foo'
  end

  def next_list_item=(linked_list_item)
    raise ArgumentError, "Can't set to self" if linked_list_item == self
    @next_list_item = linked_list_item
  end

  def last?
    true
  end

end
