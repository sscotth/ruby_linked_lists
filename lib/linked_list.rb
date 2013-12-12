require 'linked_list_item'

class LinkedList

  attr_reader :size

  def initialize *args
    @first_item = nil
    @last = nil
    @size = 0
    args.each do |arg|
      add_item(arg)
    end
  end

  def add_item(payload)
    new_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @size = 1
      @last = new_item
      @first_item = new_item
    else
      last_item = @first_item
      until last_item.nil? || last_item.last?
        last_item = last_item.next_list_item
      end
      @size += 1
      @last = new_item
      last_item.next_list_item = new_item
    end
  end

  def get(item_index)
    get_item(item_index).payload
  end

  def get_item(item_index)
    raise IndexError if item_index < 0
    item = @first_item
    item_index.times do
      raise IndexError if item.nil?
      item = item.next_list_item
    end
    item
  end

  def last
    @last.payload unless @last.nil?
  end

  def to_s
    self.to_a.empty? ? "| |" : "| #{self.to_a.join(', ')} |"
  end

  def to_a
    each_item = @first_item
    payloads = []

    while each_item do
      payloads << each_item.payload
      each_item = each_item.next_list_item
    end

    payloads
  end

  def [](item_index)
    get(item_index)
  end

  def []=(item_index, payload)
    get_item(item_index).payload = payload
  end

  def remove(item_index)
    @size -= 1
    get_item(item_index - 1).next_list_item = get_item(item_index + 1)
  end

end
