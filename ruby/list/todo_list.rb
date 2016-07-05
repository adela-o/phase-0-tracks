class TodoList

	def initialize(arr)
		@arr = arr
	end

	def get_items
		@arr 
	end

	def add_item(item)
		@arr.push(item)
	end

	def delete_item(item)
		@arr.delete(item)
	end

	def get_item(i)
		@arr[i]
		
	end

end
