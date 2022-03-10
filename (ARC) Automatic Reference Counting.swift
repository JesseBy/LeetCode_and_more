
class Person {
    let name: String
    var macbook: MacBook?
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    deinit {
        print("\(name) is deinitialized")
    }
}

class MacBook {
    let name: String
    //weak for release memory when owner1 = nil in UI down below
    weak var owner: Person?
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    deinit {
        print("MacBook \(name) is deinitialized")
    }
}

class UI {
    var owner1: Person?
    var macbook1: MacBook?
    
    func createObject() {
        owner1 = Person(name: "Jesse", macbook: nil)
        macbook1 = MacBook(name: "Matilda", owner: nil)
    }
    func assignProperties() {
        owner1?.macbook = macbook1
        macbook1?.owner = owner1
        
            //
        owner1 = nil
        print(macbook1?.owner)
    }
}

let ui = UI()
ui.createObject()
ui.assignProperties()

