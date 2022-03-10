let list1 = [1, 1, 2, 4, 9, 18], list2 = [1, 3, 4, 15, 24]

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let list3 = list1 + list2
        return list3.sorted()
    }
}
Solution().mergeTwoLists(list1, list2)
