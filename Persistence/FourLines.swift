//
//  FourLines.swift
//  Persistence
//
//  Created by Zachary Calderone on 3/12/18.
//  Copyright © 2018 Black Kobold Games. All rights reserved.
//

import Foundation

class FourLines : NSObject, NSCoding, NSCopying {
    private static let linesKey = "linesKey"
    var lines:[ String]?
    override init() { }
    
    required init?( coder aDecoder: NSCoder) {
        lines = aDecoder.decodeObject( forKey: FourLines.linesKey) as? [String]
    }
    
    func encode( with aCoder: NSCoder) {
        if let saveLines = lines {
            aCoder.encode( saveLines, forKey: FourLines.linesKey)
        }
    }
    func copy( with zone: NSZone? = nil) -> Any {
        let copy = FourLines()
        if let linesToCopy = lines {
            var newLines = Array < String >()
            for line in linesToCopy {
                newLines.append( line)
            }
            copy.lines = newLines
        }
        return copy
    }
}
