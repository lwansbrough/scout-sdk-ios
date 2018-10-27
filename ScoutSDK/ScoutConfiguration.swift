import Foundation
import AppAuth

public struct ScoutConfiguration {
  public var clientId: String
  
  public init(clientId: String) {
    self.clientId = clientId
  }
}
