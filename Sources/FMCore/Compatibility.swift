import Foundation

public extension UInt8 {
    
    func format(_ f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

public extension Int {
    
    func format(_ f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

public extension Double {
    
    func format(_ f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}
