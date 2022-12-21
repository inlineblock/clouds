//
//  gql.swift
//  clouds
//
//  Created by Dennis Wilkins on 12/4/22.
//

import Foundation


@propertyWrapper struct gql {
    var wrappedValue: String

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
