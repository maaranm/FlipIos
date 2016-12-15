//
//  Array2D.swift
//  Flip
//
//  Created by Maaran on 2016-12-14.
//  Copyright © 2016 Maaran. All rights reserved.
//

import Foundation

struct Array2D<T> {
    let columns: Int
    let rows: Int
    fileprivate var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(repeating: nil, count: rows*columns)
    }
    
    subscript(column: Int, ro w: Int) -> T?{
        get{
            return array[rows*columns + column]
        }
        set{
            array[rows*columns + column] = newValue
        }
    }
}
