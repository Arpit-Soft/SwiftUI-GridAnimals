//
//  Array+Extension.swift
//  SwiftUI-GridAnimals
//
//  Created by Arpit Dixit on 22/06/21.
//

import Foundation

extension Array {
    
    func chunks(size: Int) -> [ArraySlice<Element>] {
        
        var chunks = [ArraySlice<Element>]()
        for index in stride(from: 0, to: self.count, by: size) {
            var chunk = ArraySlice<Element>()
            let end = index + size
            if end > self.count {
                chunk = self[index..<self.count]
            } else {
                chunk = self[index..<end]
            }
            if end + 1 == self.count {
                let remainingChunk = self[end..<self.count]
                chunks.append(remainingChunk)
            }
            chunks.append(chunk)
        }
        return chunks
    }
}
