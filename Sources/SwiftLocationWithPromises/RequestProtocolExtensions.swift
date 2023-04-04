//
//  RequestProtocolExtensions.swift
//  SwiftLocationWithPromises
//
//  Created by Roman Podymov on 04/04/2023.
//  Copyright © 2023 SwiftLocationWithPromises. All rights reserved.
//

import PromiseKit
import SwiftLocation

extension RequestProtocol {
    public var asPromise: Promise<ProducedData> {
        .init { resolver in
            then { result in
                resolver.resolve(result)
            }
        }
    }
}
