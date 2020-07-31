final class Node<T> {
	let value: T
	var next: Node?
	
	init(_ value: T, node: Node? = nil) {
		self.value = value
		self.next = node
	}
}

final class LinkedList<T> {
	private let head: Node<T>
	
	init(_ value: T) {
		self.head = Node(value, node: nil)
	}
	
	func appendNode(withValue value: T) {
		var current = self.head
		while current.next != nil {
			current = current.next!
		}
		current.next = Node(value)
	}
	
	func printAll() {
		var current = self.head
		print(current.value)
		while current.next != nil {
			current = current.next!
			print(current.value)
		}
	}
}

let linkedList = LinkedList<Double>(0.123)
linkedList.appendNode(withValue: 1.123)
linkedList.appendNode(withValue: 2.123)
linkedList.appendNode(withValue: 3.123)
linkedList.appendNode(withValue: 4.123)

linkedList.printAll()
