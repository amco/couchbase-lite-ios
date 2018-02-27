//
//  GroupByRouter.swift
//  CouchbaseLite
//
//  Copyright (c) 2017 Couchbase, Inc All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

/// GroupByRouter for creating and chaning a query GROUP BY clause.
protocol GroupByRouter {
    
    /// Creates and chains a GroupBy object to group the query result.
    ///
    /// - Parameter expressions: The group by expression.
    /// - Returns: The GroupBy object that represents the GROUP BY clause of the query.
    func groupBy(_ expressions: ExpressionProtocol...) -> GroupBy
    
    /// Creates and chains a GroupBy object to group the query result.
    ///
    /// - Parameter expressions: The group by expression.
    /// - Returns: The GroupBy object that represents the GROUP BY clause of the query.
    func groupBy(_ expressions: [ExpressionProtocol]) -> GroupBy
    
}
