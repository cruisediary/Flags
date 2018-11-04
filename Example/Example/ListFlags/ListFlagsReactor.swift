//
//  ListFlagsReactor.swift
//  Example
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import ReactorKit
import RxSwift

class ListFlagsReactor: Reactor {
    enum Action {
        case typing(text: String)
    }

    enum Mutation {
        case filter(key: String)
    }

    struct State {
        var countryCodes: [String]
    }

    var initialState = State(countryCodes: NSLocale.isoCountryCodes)

    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .typing(let text):
            return .just(Mutation.filter(key: text))
        }
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .filter(let key):
            state.countryCodes = NSLocale.isoCountryCodes.filter { $0.contains(key) }
        }
        return state
    }
}
