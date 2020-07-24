//
//  AppReucer.swift
//  CA-ViewStore
//
//  Created by George Kaimakas on 24/7/20.
//  Copyright © 2020 gkaimakas. All rights reserved.
//

import ComposableArchitecture
import Foundation

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { (state, action, env) -> Effect<AppAction, Never> in
    switch action {
    case let .selectTab(value):
        state.selectedTab = value
    }
    
    return .none
}.debug()
