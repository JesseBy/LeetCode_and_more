let list1 = [1, 1, 2, 4, 9, 18], list2 = [1, 3, 4, 15, 24]

class Solution {
    func mergeTwoLists(_ list1: [Int?], _ list2: [Int?]) -> [Int?] {
        var list3: [Int] = []
        var list1 = list1.compactMap { $0 }
        var list2 = list2.compactMap { $0 }
        
        while list1.count > 0 && list2.count > 0 {
            if list1.first! < list2.first! {
                list3.append(list1.removeFirst())
            } else {
                list3.append(list2.removeFirst())
            }
            print(list3)
        }
        list3 += list1 + list2
        print(list3)
        return list3
    }
}

Solution().mergeTwoLists(list1, list2)
