class Node {
	let value: Int
	var left: Node?
	var right: Node?
	
	init(_ value: Int) {
		self.value = value
	}
}

let root = Node(28)
root.left = Node(24)
root.left?.right = Node(25)
root.left?.left = Node(19)
root.left?.left?.left = Node(15)
root.left?.left?.right = Node(21)
root.right = Node(47)
root.right?.left = Node(40)
root.right?.right = Node(57)
root.right?.right?.left = Node(55)
root.right?.right?.right = Node(59)

func inOrderTraversal(node: Node?) {
	guard let node = node else { return }
	
	inOrderTraversal(node: node.left)
	print(node.value, terminator: " ")
	inOrderTraversal(node: node.right)
}

func preOrderTraversal(node: Node?) {
	guard let node = node else { return }
	
	print(node.value, terminator: " ")
	preOrderTraversal(node: node.left)
	preOrderTraversal(node: node.right)
}

func postOrderTraversal(node: Node?) {
	guard let node = node else { return }
	
	postOrderTraversal(node: node.left)
	postOrderTraversal(node: node.right)
	print(node.value, terminator: " ")
}

print("In-Order Traversal")
inOrderTraversal(node: root)
print("\nPre-Order Traversal")
preOrderTraversal(node: root)
print("\nPost-Order Traversal")
postOrderTraversal(node: root)
