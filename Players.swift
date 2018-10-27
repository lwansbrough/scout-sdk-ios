//
//  Players.swift
//  Apollo
//
//  Created by Lochlan Wansbrough on 2018-10-26.
//

import Foundation

public class Players {

  let apollo: ApolloClient

  init(withApollo: ApolloClient) {
    apollo = withApollo
  }
  
  func get(title: String?, identifier: String?, segment: String?, callback: (err: Error, player: PlayerQuery.Player)) {
    apollo.fetch(query: PlayerQuery(title: title, identifier: identifier, segment: segment)) { (result, error) in
      callback(error, result?.data?.player)
    }
  }
}
