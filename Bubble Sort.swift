
func bubbleSort(arr: [Int]) -> [Int] {
    
    var array = arr
    
    for _ in 0..<array.count - 1 {
        for j in 0..<array.count - 1 {
            if array[j] > array[j + 1] {
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
            print(array)
        }
    }
    
    return array
}

let numbers = [5, 1, 10, 3, 9, 2, 6, 0]
print(bubbleSort(arr: numbers))
