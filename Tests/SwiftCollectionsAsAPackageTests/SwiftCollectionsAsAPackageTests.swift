import XCTest
@testable import SwiftCollectionsAsAPackage

final class SwiftCollectionsAsAPackageTests: XCTestCase {
    
    func testZeroOneBFS() throws {
        let solution = SolutionOne()
        solution.addEdge(u:0, v: 1, wt: 0)
        solution.addEdge(u:0, v: 7, wt: 1)
        solution.addEdge(u:1, v: 7, wt: 1)
        solution.addEdge(u:1, v: 2, wt: 1)
        solution.addEdge(u:2, v: 3, wt: 0)
        solution.addEdge(u:2, v: 5, wt: 0)
        solution.addEdge(u:2, v: 8, wt: 1)
        solution.addEdge(u:3, v: 4, wt: 1)
        solution.addEdge(u:3, v: 5, wt: 1)
        solution.addEdge(u:4, v: 5, wt: 1)
        solution.addEdge(u:5, v: 6, wt: 1)
        solution.addEdge(u:6, v: 7, wt: 1)
        solution.addEdge(u:7, v: 8, wt: 1)
     
        // source node
        let src = 0

        XCTAssertEqual(solution.zeroOneBFS(src: src), [0,0,1,1,2,1,2,1,2])
    }
}
