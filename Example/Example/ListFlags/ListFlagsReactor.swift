//
//  ListFlagsReactor.swift
//  Example
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import Flags
import ReactorKit
import RxSwift

class ListFlagsReactor: Reactor {
    var flags = NSLocale.isoCountryCodes.compactMap { Flag(countryCode: $0) }

    enum Action {
        case typing(text: String)
    }

    enum Mutation {
        case filter(key: String)
    }

    struct State {
        var flags: [Flag]
    }

    lazy var initialState = State(flags: flags)

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
            state.flags = flags.filter { key.isEmpty ? true : [$0.countryCode, $0.countryName].contains(key) }
        }
        return state
    }
}
