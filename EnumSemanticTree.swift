//
//  EnumSemanticTree.swift
//  Created by Josh Basch on 8/17/16.
//

enum expr {
    case literal(Int)
    case reference(String)
    case add(expr, expr)
    case sub(expr, expr)
    case avg([expr])


    func eval(context: [String:Int]) -> Int {
        switch self {
        case .literal(let val): return val
        case .reference(let key): return context[key]
        case .add(let lhs, let rhs): return lhs.eval(context) + rhs.eval(context)
        }
    }
}
