//
//  Observable.swift
//  App Job Search
//
//  Created by Fixed on 16.03.24.
//

import Foundation

class Observable<T> {
    
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                // передаем prvate var'у listener значение value с помощью didSet
                self.listener?(self.value)
            }
        }
    }
    
    init(_ value: T?) {
        self.value = value
    }
    
    private var listener: ((T?) -> Void)?
    
    func bind(_ listener: @escaping ((T?) -> Void)) {
        // захват значения value
        listener(value)
       
        self.listener = listener
    }
}
