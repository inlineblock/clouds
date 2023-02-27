//
//  gql.swift
//  clouds
//
//  Created by Dennis Wilkins on 12/4/22.
//

import Foundation
import Amphion
import SwiftUI


@propertyWrapper struct gql {
    var wrappedValue: String

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

@propertyWrapper class useFragment<TFragment: Amphion.Fragment> {
  @StateObject var wrappedValue: TFragment;
  @EnvironmentObject var environment: Amphion.Environment;
  
  init(wrappedValue: TFragment) {
    self._wrappedValue = StateObject(wrappedValue: wrappedValue);
    self.environment.store.attach(id: wrappedValue.id);
  }
}
