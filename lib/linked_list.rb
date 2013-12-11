require 'linked_list_item'

class LinkedList

  def initialize *args
    @first_item = nil
  end

  def add_item(payload)
    new_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = new_item
    else
      last_item = @first_item
      until last_item.nil? || last_item.last?
        last_item = last_item.next_list_item
      end
      last_item.next_list_item = new_item
    end
  end

  def get(item_index)
    raise IndexError if item_index < 0
    item = @first_item
    item_index.times do
      raise IndexError if item.nil?
      item = item.next_list_item
    end
    item.payload
  end

end
