let s = "()[]{}"
//let s = "(]{}"

class Solution {
    
    func isValid(_ s: String) -> Bool {
        
        if s.count % 2 != 0 { 
            return false 
        }
        
        var stack: [Character] = []
        
        for character in s {
            switch character {
            case "(": stack.append(")")
            case "[": stack.append("]")
            case "{": stack.append("}")
            default:
                if stack.isEmpty || stack.removeLast() != character {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
    
    
//    func isValid(_ s: String) -> Bool {
//        let array: [Character:Character] = [")":"(", "]":"[", "}":"{"]
//        var stack: [Character] = []
//
//        for symbol in s {
//            if let value = stack[symbol], stack.last == value {
//                stack.popLast()
//            } else {
//                stack.append(symbol)
//            }
//        }
//
//        return stack.isEmpty
//    }
}

Solution().isValid(s)
