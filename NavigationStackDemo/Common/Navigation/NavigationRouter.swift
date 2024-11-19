//
//  NavigationRouter.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/19/24.
//

import SwiftUI
import Observation

// Routes for navigation. Add new routes here.
enum Route: Hashable {
    case FirstView
    case SecondView
    case ThirdView
}

// To manage navigation operations such as push, pop etc.
@Observable
class NavigationRouter {
    
    //MARK: - Navigation path variable
    // It stores the routes and is initialized with an empty Route array.
    var path: [Route] = [Route]()
    
    //MARK: - Navigation Push
    // New route is appended to path variable only if it is not added just before.
    func push(_ route: Route) {
        if path.last != route {
            path.append(route)
        }
    }
    
    //MARK: - Navigation Pop
    // The last elememt in path variable is removed only after checking its not empty.
    func pop() {
        if path.isEmpty == false {
            path.removeLast()
        }
    }
    
    //MARK: - Navigation Pop to Root
    // Navigates to Root view by removing all routes added to the path variable.
    func popToRoot() {
        path.removeAll()
    }
    
    //MARK: - Navigation Pop to Until
    // Navigates back to a particular view.
    func popUntil(_ route: Route) {
        if path.last != route && path.isEmpty == false {
            path.removeLast()
            popUntil(route)
        }
    }
    
}

