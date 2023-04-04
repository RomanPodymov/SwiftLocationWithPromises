//
//  RequestProtocolExtensions.swift
//  SwiftLocationWithPromises
//
//  Created by Roman Podymov on 04/04/2023.
//  Copyright © 2023 SwiftLocationWithPromises. All rights reserved.
//

import PromiseKit
import SwiftLocation
import Dispatch

extension RequestProtocol {
    public func asPromise(queue: DispatchQueue = .main) -> Promise<ProducedData> {
        .init { resolver in
            _ = then(queue: queue) { result in
                resolver.resolve(result)
            }
        }
    }
}
