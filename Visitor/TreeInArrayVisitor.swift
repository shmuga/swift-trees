//
//  TreeConsoleVisitor.swift
//  Trees
//
//  Created by Mark Orel on 2/16/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class TreeInArrayVisitor: VisitorProtocol {
    var arr = [Int]()
    
    func display(value: Int) {
        arr.append(value)
    }
}