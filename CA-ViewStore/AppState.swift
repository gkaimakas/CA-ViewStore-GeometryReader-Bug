//
//  AppState.swift
//  CA-ViewStore
//
//  Created by George Kaimakas on 24/7/20.
//  Copyright © 2020 gkaimakas. All rights reserved.
//

import Foundation

struct AppState: Equatable, Hashable {
    var selectedTab: Tab = .first
}

extension AppState {
    enum Tab: String, Equatable, Hashable {
        case first
        case second
        case third
    }
}
