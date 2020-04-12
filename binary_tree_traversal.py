class Node:
	def __init__(self, key):
		self.right = None
		self.left = None
		self.key = key

def preorder_traversal(root, result = []):
	if root:
		result.append(root.key)
		preorder_traversal(root.left)
		preorder_traversal(root.right)
		
	return result
		
def inorder_traversal(root, result = []):
	if root:
		inorder_traversal(root.left)
		result.append(root.key)
		inorder_traversal(root.right)
		
	return result
		
def postorder_traversal(root, result = []):
	if root:
		postorder_traversal(root.left)
		postorder_traversal(root.right)
		result.append(root.key)
		
	return result

def create_binary_tree():		
	root = Node(28)
	root.left = Node(24)
	root.left.right = Node(25)
	root.left.left = Node(19)
	root.left.left.left = Node(15)
	root.left.left.right = Node(21)
	root.right = Node(47)
	root.right.left = Node(40)
	root.right.right = Node(57)
	root.right.right.left = Node(55)
	root.right.right.right = Node(59)
	
	return root

root = create_binary_tree()
assert preorder_traversal(root) == [28, 24, 19, 15, 21, 25, 47, 40, 57, 55, 59]
assert inorder_traversal(root) == [15, 19, 21, 24, 25, 28, 40, 47, 55, 57, 59]
assert postorder_traversal(root) == [15, 21, 19, 25, 24, 40, 55, 59, 57, 47, 28]
