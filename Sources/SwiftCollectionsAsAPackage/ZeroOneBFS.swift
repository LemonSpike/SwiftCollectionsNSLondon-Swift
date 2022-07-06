//
//  ZeroOneBFS.swift
//  
//
//  Created by Pranav Kasetti on 16/06/2022.
//

import Foundation
import Collections

// Represents edges in the graph
class Edge {
    var to: Int
    var weight: Int
    
    init(to: Int, weight: Int) {
        self.to = to
        self.weight = weight
    }
}

class SolutionOne {
    // Store edges as an adjacency list.
    var edges: [[Edge]] = []
    
    // Number of vertices
    let V = 9
    
    init() {
        for _ in 0 ..< V {
            edges.append([])
        }
    }
    
    // Create bi-directional edge
    func addEdge(u: Int, v: Int, wt: Int) {
        edges[u].append(Edge(to: v, weight: wt))
        edges[v].append(Edge(to: u, weight: wt))
    }
    
    // Prints shortest distance from
    // given source to every other vertex
    func zeroOneBFS(src: Int) -> [Int] {
     
        // Initialize distances from given source
        var dist = Array(repeating: 0, count: V)
        for i in 0 ..< V {
            dist[i] = Int.max
        }
     
        // double ended queue to do BFS.
        var Q: Deque = [src]
        dist[src] = 0
     
        while !Q.isEmpty {
            let v = Q[0]
            _ = Q.popFirst() // Optimisation
     
            // iterate through edges from node v
            for i in 0 ..< edges[v].count {
                // checking for the optimal distance
                // get distance for a single edge from source v
                if (dist[edges[v][i].to] >
                    dist[v] + edges[v][i].weight) {
                    dist[edges[v][i].to] = dist[v] + edges[v][i].weight
                    
                    // Put 0 weight edges to front and 1 weight
                    // edges to back so that vertices are processed
                    // in increasing order of weights.
                    if edges[v][i].weight == 0 {
                        Q.prepend(edges[v][i].to) // Optimisation
                    } else {
                        Q.append(edges[v][i].to)
                    }
                }
            }
        }
        // printing the shortest distances
        print(dist)
        
        return dist
    }
}
