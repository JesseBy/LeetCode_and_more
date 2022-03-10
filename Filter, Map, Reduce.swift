
struct Device {
    var name: String
    var color: String
    var price: Int
}
let imac1 = Device(name: "iMac", color: "white", price: 1000)
let iphone1 = Device(name: "iPhone 6", color: "black", price: 500)
let imac2 = Device(name: "iMac pro", color: "black", price: 2000)
let iphone2 = Device(name: "iPhone 8", color: "gold", price: 1500)

let myDevices = [imac1, imac2, iphone1, iphone2]

//way1
var cheapDevices: [Device] = []
for i in myDevices {
    if i.price <= 1000 {
        cheapDevices.append(i)
    }
}
print(cheapDevices)

    //way2 Filter(filter only out):
let cheapDevices2 = myDevices.filter({ return $0.price <= 1000 })
print(cheapDevices2)

    // Map(map can manipulate an objects):
let russianPrices: [Int] = myDevices.map({ return $0.price * 80 })
print(russianPrices)

    // Reduce:
let totalRussianPrice: Int = russianPrices.reduce(0, +)
print(totalRussianPrice)

    //old way reduce:
//var totalPrice: Int = 0
//for i in russianPrices {
//    totalPrice += i
//}
//print(totalPrice)
