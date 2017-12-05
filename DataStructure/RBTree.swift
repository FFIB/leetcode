//
//  RBTree.swift
//  leetcode
//
//  Created by FFIB on 2017/12/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

public enum NodeType {
    case red
    case black
}

public extension NodeType {
    var symbol: String {
        switch self {
        case .red:
            return "□"
        case .black:
            return "■"
        }
    }
}

public enum RBTree<Element: Comparable> {
    case empty
    indirect case node(NodeType, Element, RBTree, RBTree)
}

public extension RBTree {
    func contains(_ element: Element) -> Bool {
        switch self {
        case .empty:
            return false
        case .node(_, element, _, _):
            return true
        case let .node(_, value, left, _) where value > element:
            return left.contains(element)
        case let .node(_, _, _, right):
            return right.contains(element)
        }
    }
}

public extension RBTree {
    func forEach(_ body:(Element) throws -> Void)rethrows {
        switch self {
        case .empty:
            break
        case let .node(_, value, left, right):
            try left.forEach(body)
            try body(value)
            try right.forEach(body)
        }
    }
    func ceiling(_ element: Element) -> Element?{
        var node = self
        while case let .node(_, value, _, right) = node {
            if value < element {
                node = right
            }else {
                return value
            }
            
        }
        return nil
    }
    
    func floor(_ element: Element) -> Element? {
        var node = self
        var last: Element?
        while case let .node(_, value, left, _) = node {
            if value > element {
                node = left
                last = value
            }else {
                return last
            }
            
        }
        return last
    }
}

extension RBTree: CustomStringConvertible {
    public var description: String {
        return self.diagram("", "", "")
    }
    
    func diagram(_ top: String, _ root: String, _ bottom: String) -> String {
        switch self {
        case .empty:
            return root + "•\n"
        case let .node(type, value, .empty, .empty):
            return root + "\(type.symbol)\(value)\n"
        case let .node(type, value, left, right):
            return right.diagram(top + " ", top + "→", top + "丨 ")
                + root + "\(type.symbol)\(value)\n"
                + left.diagram(bottom + "丨 ", bottom + "→", bottom + " ")
        }
    }
}


extension RBTree {
    
    private func inserting(_ element: Element)->(tree: RBTree, existingMember: Element?) {
        let (tree, old) = _inserting(element)
        switch tree {
        case let .node(.red, value, left, right):
            return (.node(.black, value, left, right), old)
        default:
            return (tree, old)
        }
    }
    
    private func _inserting(_ element: Element)->(tree: RBTree, old: Element?) {
        switch self {
        case .empty:
            return (.node(.red, element, .empty, .empty), nil)
        case let .node(_, value, _, _) where value == element:
            return (self, value)
        case let .node(type, value, left, right) where value > element:
            let (l, old) = left._inserting(element)
            if let old = old { return (self, old) }
            return (balanced(type, value, l, right), nil)
        case let .node(type, value, left, right):
            let (r, old) = right._inserting(element)
            if let old = old { return (self, old) }
            return (balanced(type, value, left, r), nil)
        }
    }
    
    private func balanced(_ type: NodeType, _ value: Element, _ left: RBTree, _ right: RBTree) -> RBTree {
        switch (type, value, left, right) {
        case let (.black, z, .node(.red, y, .node(.red, x, a, b), c), d):
            return .node(.red, y, .node(.black, x, a, b), .node(.black, z, c, d))
        case let (.black, z, .node(.red, x, a, .node(.red, y, b, c)), d):
            return .node(.red, y, .node(.black, x, a, b), .node(.black, z, c, d))
        case let (.black, x, a, .node(.red, z, .node(.red, y, b, c), d)):
            return .node(.red, y, .node(.black, x, a, b), .node(.black, z, c, d))
        case let (.black, x, a, .node(.red, y, b, .node(.red, z, c, d))):
            return .node(.red, y, .node(.black, x, a, b), .node(.black, z, c, d))
        default:
            return .node(type, value, left, right) }

    }
    
    @discardableResult
    public mutating func insert(_ element: Element)
        ->(inserted: Bool, memberAfterInsert: Element) {
            let (tree, old) = inserting(element)
            self = tree
            return (old == nil, old ?? element)
    }
}




