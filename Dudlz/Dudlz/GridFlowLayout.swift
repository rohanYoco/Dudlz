//
//  GridFlowLayout.swift
//  Dudlz
//
//  Created by Rohan Jansen on 2015/11/13.
//  Copyright © 2015 Rohan Jansen. All rights reserved.
//

import UIKit

class GridFlowLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let arr = super.layoutAttributesForElementsInRect(rect)!
        return arr.map {
            (var atts) in
            if atts.representedElementKind == nil {
                let ip = atts.indexPath
                atts = self.modifiedAttributesForElementAtIndexPath(ip)!
            }
            return atts
        }
    }
    
    func modifiedAttributesForElementAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
        return nil;
    }
}
