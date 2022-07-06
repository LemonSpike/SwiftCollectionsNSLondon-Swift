import Collections
import Foundation

public class SwiftCollectionsAsAPackage {
    private var colors: Deque = ["red", "yellow", "blue"]

    public init() {
        print(colors[1]) // "yellow"
        colors.append("green")
        colors.prepend("orange")
        print(colors)
        // colors: ["orange", "red", "yellow", "blue", "green"]

        print(colors.popLast() ?? "") // "green"
        print(colors.popFirst() ?? "") // "orange"
        print(colors)
        // colors: ["red", "yellow", "blue"]
        
        colors.replaceSubrange(1...2, with: [])
        // equivalent to colors.removeSubrange(1...2)
        // colors: ["red"]
        colors[0] = "purple"
        // colors: ["purple"]
        
        DispatchQueue.main.async {
            print(self.colors)
        }
        
        let a: OrderedSet = [1, 2, 3, 4]
        var b: OrderedSet = [4, 3, 2, 1]
        print(a == b) // false
        b.sort() // `b` now has value [1, 2, 3, 4]
        print(a == b) // true
        
        let c: OrderedDictionary = [1: "one", 2: "two"]
        var d: OrderedDictionary = [2: "two", 1: "one"]
        print(c == d) // false
        d.swapAt(0, 1) // `d` now has value [1: "one", 2: "two"]
        print(c == d) // true
    }
}
