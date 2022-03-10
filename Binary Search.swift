
let arrayNumbers = [1, 2, 3, 7, 9, 11, 12, 15, 18, 19, 20], target = 19

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false }
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex / 2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in array")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        print("slice>: \(slice)")
        return binarySearch(array: slice, key: key)
    }
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        print("slice<: \(slice)")
        return binarySearch(array: slice, key: key)
    }
    if key == midValue {
        print("\(key) found in array")
        return true
    }
    return false
}
binarySearch(array: arrayNumbers, key: target)
