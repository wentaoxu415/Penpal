//
//  PenpalModel.swift
//  Penpal
//
//  Created by Soren Anderson on 1/20/15.
//  Copyright (c) 2015 W16 Design Studio. All rights reserved.
//

import Foundation

class PenpalModel {
    
    var storyBlocks: [String] = ["Story Piece 1. Lead In 1...", "Story Piece 2. Lead In 2...", "Story Piece 3. Lead In 3..."]
    
    init () {
        
    }
    
    func addNewStoryBlock(block: String) {
        self.storyBlocks.append(block)
    }
}