//
//  ContentView.swift
//  CA-ViewStore
//
//  Created by George Kaimakas on 24/7/20.
//  Copyright © 2020 gkaimakas. All rights reserved.
//

import ComposableArchitecture
import SwiftUI

struct ContentView: View {
    var store: Store<AppState, AppAction>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            GeometryReader { geometry in
                VStack {
                    VStack {
                        self.view(tab: viewStore.selectedTab)
                        Spacer()
                    }
                    
                    HStack {
                        Button(action: { viewStore.send(.selectTab(.first)) }) {
                            Text("First")
                        }
                        .background(viewStore.selectedTab == .first ? Color.red : Color.green )
                        
                        Button(action: { viewStore.send(.selectTab(.second)) }) {
                            Text("Second")
                        }
                        .background(viewStore.selectedTab == .second ? Color.red : Color.green )
                        
                        Button(action: { viewStore.send(.selectTab(.third)) }) {
                            Text("Third")
                        }
                        .background(viewStore.selectedTab == .third ? Color.red : Color.green )
                    }
                }
            }
        }
    }
    
    func view(tab: AppState.Tab) -> some View {
        Text(tab.rawValue)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
