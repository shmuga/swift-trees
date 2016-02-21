//
//  Tree.swift
//  Trees
//
//  Created by Mark Orel on 2/16/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class Tree{
    
    var key: Int?
    var left: Tree?
    var right: Tree?
    var height: Int?
    
    init() {
        self.height = -1
    }
    
    func insert(key: Int) {
        if (self.key == nil) {
            self.key = key
            self.height = 0
            return
        }
        
        if (key > self.key) {
            if (self.right != nil) {
                self.right?.insert(key)
            } else {
                self.right = Tree()
                self.right?.key = key
            }
        }
        
        if (key < self.key) {
            if (self.left != nil) {
                self.left?.insert(key)
            } else {
                self.left = Tree()
                self.left?.key = key
            }
        }
    }
    
    func preorder(visitor: VisitorProtocol) {
        visitor.display(self.key!)
        
        if (self.left != nil) {
            self.left?.preorder(visitor)
        }
        
        if (self.right != nil) {
            self.right?.preorder(visitor)
        }
    }
    
    func inorder(visitor: VisitorProtocol) {
        if (self.left != nil) {
            self.left?.inorder(visitor)
        }

        visitor.display(self.key!)
        
        if (self.right != nil) {
            self.right?.inorder(visitor)
        }
    }
    
    func postorder(visitor: VisitorProtocol) {
        if (self.left != nil) {
            self.left?.postorder(visitor)
        }
        
        if (self.right != nil) {
            self.right?.postorder(visitor)
        }
        
        visitor.display(self.key!)
    }
    
    
    
}