class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if(list1 == nil) {return list2}
        if(list2 == nil) {return list1}
        var result:ListNode? = nil
        
        if(list1!.val <= list2!.val) {
            result = list1
            result!.next = mergeTwoLists(list1!.next,list2)
        }
        else {
            result = list2
            result!.next = mergeTwoLists(list1,list2!.next)
        }
        return result
    }
}
