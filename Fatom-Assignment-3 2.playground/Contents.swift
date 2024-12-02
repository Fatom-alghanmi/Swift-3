import UIKit

class Computer {// Super class
    private var brand: String
    private var processor: String
    private var ram: Int // in GB
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    //getter
    func displaySpecs() {
        print("Brand: \(brand)", "Processor: \(processor)", " Ram: \(ram) GB")
    }
    func getBrand() -> String{
        return self.brand
    }
    func getProcessor() -> String{
        return self.processor
    }
    func getRam() -> Int {
        return self.ram
    }
}

// Computer

// ==================================> // Subclasses/
// Laptop

class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
        //getter
        func touch(){
            if self.isTouchscreen == true {
                print("Yes")
            } else {
                print("No")
            }
    }
    override func displaySpecs() {
        print("Brand: \(super.getBrand())")
        print("Processor: \(super.getProcessor())")
        print("Ram:\(super.getRam()) GB")
       print("Touchscreen: \(self.isTouchscreen ? "Yes" : "No")")
    }
    
}
// laptop
// ===================================>
// Desktop

class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    func GPU() {
        if self.hasDedicatedGPU == false {
            print("\(self.hasDedicatedGPU) No")
        } else {
            print("Yes")
        }
    }
    // getter
    override func displaySpecs() {
        print("Brand: \(super.getBrand())")
        print("Processor: \(super.getProcessor())")
        print("Ram:\(super.getRam()) GB")
        print("Didicated GPU: \(self.hasDedicatedGPU ? "Yes" : "No")")
    }
    
}
// Desktop
// ================================>
// Server
class Server: Computer {
    private var rackUnit: Int
    
    init(brand: String, processor: String, ram: Int, rackUnit: Int) {
        self.rackUnit = rackUnit
        super.init(brand: brand, processor: processor, ram: ram)
    }
    override func displaySpecs() {
        print("Brand: \(super.getBrand())")
        print("Processor: \(super.getProcessor())")
        print("Ram:\(super.getRam()) GB")
        print("Rack Unit: \(self.rackUnit)")
    }
    func unit() {
        if rackUnit >= 0 {
            print("Rack Unit \(rackUnit)U")
        }
    }
}
// Server

// =================================> // testing codes
print("Laptop Specifications Details:")
var laptop = Laptop(brand: "Apple" , processor: "M3", ram: 16, isTouchscreen: false)
laptop.displaySpecs()

print("\nDesktop Specifications Details:")
var desktop = Desktop(brand: "HP Omen", processor: "AMD Ryzen 9", ram: 32 , hasDedicatedGPU: true)
desktop.displaySpecs()

print("\nServer Specifications Details:")
var server = Server(brand: "Lenovo", processor: "Intel Xeon W-2295", ram: 64, rackUnit: 2)
server.displaySpecs()
        
