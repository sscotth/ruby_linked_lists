class LinkedListItem

  attr_reader :next_list_item

  def initialize(payload)

  end

  def payload
    'foo'
  end

  def next_list_item=(linked_list_item)
    @next_list_item = linked_list_item
  end

end
