let array = [4,2,2,8,3,3,1,11,6,3,56,6]

func getMaxValue(from array: [Int]) -> Int {
	var maxValue = 0
	for value in array {
		if value > maxValue {
			maxValue = value
		}
	}
	
	return maxValue
}

func createCountArray(with array: [Int], and maxValue: Int) -> [Int] {
	var countArray = Array(repeating: 0, count: maxValue + 1)
	for element in array {
		countArray[element] += 1
	}
	
	return countArray
}

func createCumulativeSumArray(from countArray: inout [Int]) -> [Int] {
	for i in 1..<countArray.count {
		countArray[i] += countArray[i - 1]
	}
	
	return countArray
}

func generateOutputArray(with array: [Int], and cumulativeArray: inout [Int]) -> [Int] {
	var outputArray = Array(repeating: 0, count: array.count)
	for element in array {
		let index = cumulativeArray[element] - 1
		outputArray[index] = element
		cumulativeArray[element] -= 1
	}
	
	return outputArray
}

func countingSort(array: [Int]) -> [Int] {
	let maxValue = getMaxValue(from: array)
	var countArray = createCountArray(with: array, and: maxValue) 
	var cumulativeArray = createCumulativeSumArray(from: &countArray)
	let output = generateOutputArray(with: array, and: &cumulativeArray)
	
	return output
}

print(countingSort(array: array))
