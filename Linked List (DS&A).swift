import Foundation

//create three nodes and connected them:
public class Node<Value> {
    public var value: Value
    public var next: Node?
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else { return "\(value)" }
        
        return "\(value) -> " + String(describing: next) + " "
    }
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)
node1.next = node2
node2.next = node3
print(node1)


//LinkedList:
public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    //for push:
    public mutating func push(_ value: Value) {
    head = Node(value: value, next: head)
      if tail == nil { tail = head }
    }
    
    //for append:
    public mutating func append(_ value: Value) {
      guard !isEmpty else {
        push(value)
        return
    }
        
      tail!.next = Node(value: value)
        
      tail = tail!.next
        
    }
    
    //for insert(after:):
    //find a node in the list:
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    //insert a new node:
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            append(value)
            return tail!
        }
        node.next = Node(value: value, next: node.next)
        
        return node.next!
    }
    
    //Removing values from the list:
    
    //pop: Removes the value at the front of the list:
    @discardableResult
    public mutating func pop() -> Value? {
      defer {
        head = head?.next
        if isEmpty {
    tail = nil }
    }
      return head?.value
    }
    
    //removeLast:
    @discardableResult
    public mutating func removeLast() -> Value? {
        guard let head = head else {
            return nil
        }
        
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        
        return current.value
    }
    
    //remove(after:):
    @discardableResult
    public mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        
        return node.next?.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        
        return String(describing: head)
    }
}

//push elements:
var list = LinkedList<Int>()
list.push(3)
list.push(2)
list.push(1)

print(list)

//append elements:
var list2 = LinkedList<Int>()
list2.append(1)
list2.append(2)
list2.append(3)

print(list2)

//insert(after:):
var list3 = LinkedList<Int>()
list3.push(3)
list3.push(2)
list3.push(1)

print("Before inserting: \(list3)")

var middleNode = list3.node(at: 1)!
for _ in 1...4 {
    middleNode = list3.insert(-1, after: middleNode)
}

print("After inserting: \(list)")

//pop: Removes the value at the front of the list:
var list4 = LinkedList<Int>()
list4.push(3)
list4.push(2)
list4.push(1)

print("Before popping list: \(list4)")

let poppedValue = list4.pop()

print("After popping list: \(list4)")
print("Popped value: " + String(describing: poppedValue))

//removeLast:
var list5 = LinkedList<Int>()
list5.push(3)
list5.push(2)
list5.push(1)

print("Before removing last node: \(list5)")

let removedValue5 = list5.removeLast()

print("After removing last node: \(list5)")
print("Removed value: " + String(describing: removedValue5))

//remove(after:):
var list6 = LinkedList<Int>()
list6.push(3)
list6.push(2)
list6.push(1)

print("Before removing at particular index: \(list6)")

let index = 1
let node = list6.node(at: index - 1)!
let removedValue6 = list6.remove(after: node)

print("After removing at index \(index): \(list6)")
print("Removed value: " + String(describing: removedValue6))
