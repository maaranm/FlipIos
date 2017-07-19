//
//  Level.swift
//  Flip
//
//  Created by Maaran on 2016-12-14.
//  Copyright © 2016 Maaran. All rights reserved.
//

import Foundation

var numColumns = 9
var numRows = 4
var numNull = (Double(numColumns)*Double(numRows)*0.38
var actNumNull = 0

class SmallLevel{
    fileprivate var hexagons = Array2D<Hexagon>(columns: numColumns, rows: numRows)
    
    func cookieAt(column: Int, row: Int) -> Hexagon? {
        assert(column >= 0 && column < numColumns)
        assert(row >= 0 && row < numRows)
        return hexagons[column, ro: row]
    }
    
    func shuffle() -> Set<Hexagon>{
        return createInitialHexagons()
    }
    
    private func createInitialHexagons() -> Set<Hexagon> {
        var set = Set<Hexagon>()
        
        for row in 0..<numRows {
            for column in 0..<numColumns {
                if  actNumNull <= numNull{
                    
                }
            }
        }
    }
}
