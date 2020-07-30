final class Node {
	var value: Int
	var left: Node?
	var right: Node?
	
	init(_ value: Int) {
		self.value = value
	}
}

let root = Node(4)
root.left = Node(2)
root.left?.left = Node(1)
root.left?.right = Node(3)
root.right = Node(6)
root.right?.left = Node(5)
root.right?.right = Node(7)

func displayTree(_ root: Node) {
	print("       \(root.value)")
	print("     \(root.left!.value)   \(root.right!.value)")
	print("   \(root.left!.left!.value)  \(root.left!.right!.value) \(root.right!.left!.value)  \(root.right!.right!.value)")
}

var sortedArray: [Int] = []

print("Binary Search Tree:")
displayTree(root)

func inOrderTraversal(node: Node?) {
	guard let node = node else { return }
	
	inOrderTraversal(node: node.left)
	sortedArray.append(node.value)
	inOrderTraversal(node: node.right)
}

func preOrderTraversal(node: Node?) {
	guard let node = node else { return }
	
	if !sortedArray.isEmpty {
		let value = sortedArray.removeFirst()
		node.value = value
		preOrderTraversal(node: node.left)
		preOrderTraversal(node: node.right)	
	}
}

inOrderTraversal(node: root)
preOrderTraversal(node: root)

print("Min Heap:")
displayTree(root)
