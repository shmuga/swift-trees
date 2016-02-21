//
//  TreesTests.swift
//  TreesTests
//
//  Created by Mark Orel on 2/16/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import XCTest

class TreesTests: XCTestCase {
    var tree: Tree = Tree()
    override func setUp() {
        tree.insert(10)
        tree.insert(1)
        tree.insert(15)
        tree.insert(5)
        tree.insert(3)
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIfRootEmpty() {
        let t = Tree()
        XCTAssert(t.key == nil)
        t.insert(2)
        XCTAssert(t.key == 2)
        t.insert(3)
        XCTAssert(t.right?.key == 3)
        t.insert(1)
        XCTAssert(t.left?.key == 1)
        t.insert(5)
        XCTAssert(t.right?.right?.key == 5)
    }
    
    func testPreorderVisit() {
        let visitor = TreeInArrayVisitor()
        print("preorder")
        self.tree.preorder(visitor)
        print(visitor.arr)
    }

    func testInorderVisit() {
        let visitor = TreeInArrayVisitor()
        print("inorder")
        self.tree.inorder(visitor)
        print(visitor.arr)
    }
    
    func testPostorderVisit() {
        let visitor = TreeInArrayVisitor()
        print("postorder")
        self.tree.postorder(visitor)
        print(visitor.arr)
    }

}
