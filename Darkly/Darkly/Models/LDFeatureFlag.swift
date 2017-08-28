//
//  LDFeatureFlag.swift
//  Darkly
//
//  Created by Mark Pokorny on 7/24/17. +JMJ
//  Copyright © 2017 LaunchDarkly. All rights reserved.
//

import Foundation

struct LDFeatureFlag<T: LDFlaggable> {
    
    let key: String
    var value: T?
    private(set) var source: LDFlagValueSource?
    
    init?(key: String) {
        guard !key.isEmpty else { return nil }
        self.key = key
    }
    
    func variation(fallback: T) -> T {
        return value ?? fallback
    }
}