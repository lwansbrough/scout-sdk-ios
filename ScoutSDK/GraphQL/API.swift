//  This file was automatically generated and should not be edited.

import Apollo

public final class UserQuery: GraphQLQuery {
  public let operationDefinition =
    "query User($id: String) {\n  user(id: $id) {\n    __typename\n    id\n    email\n    personas {\n      __typename\n      id\n      externalId\n      handle\n      pictureUrl\n      countryCode\n      region\n      isVerified\n      platform {\n        __typename\n        slug\n        name\n      }\n    }\n  }\n}"

  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .object(User.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: User? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
    }

    /// Get a user by their ID.
    public var user: User? {
      get {
        return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("personas", type: .list(.object(Persona.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, email: String? = nil, personas: [Persona?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "personas": personas.flatMap { (value: [Persona?]) -> [ResultMap?] in value.map { (value: Persona?) -> ResultMap? in value.flatMap { (value: Persona) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// ID of the user.
      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The user's email.
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// A list of the user's online personas.
      public var personas: [Persona?]? {
        get {
          return (resultMap["personas"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Persona?] in value.map { (value: ResultMap?) -> Persona? in value.flatMap { (value: ResultMap) -> Persona in Persona(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Persona?]) -> [ResultMap?] in value.map { (value: Persona?) -> ResultMap? in value.flatMap { (value: Persona) -> ResultMap in value.resultMap } } }, forKey: "personas")
        }
      }

      public struct Persona: GraphQLSelectionSet {
        public static let possibleTypes = ["Persona"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("externalId", type: .scalar(String.self)),
          GraphQLField("handle", type: .scalar(String.self)),
          GraphQLField("pictureUrl", type: .scalar(String.self)),
          GraphQLField("countryCode", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("isVerified", type: .scalar(Bool.self)),
          GraphQLField("platform", type: .object(Platform.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, externalId: String? = nil, handle: String? = nil, pictureUrl: String? = nil, countryCode: String? = nil, region: String? = nil, isVerified: Bool? = nil, platform: Platform? = nil) {
          self.init(unsafeResultMap: ["__typename": "Persona", "id": id, "externalId": externalId, "handle": handle, "pictureUrl": pictureUrl, "countryCode": countryCode, "region": region, "isVerified": isVerified, "platform": platform.flatMap { (value: Platform) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// ID of the persona.
        public var id: String? {
          get {
            return resultMap["id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The ID of the persona as it exists on the platform.
        public var externalId: String? {
          get {
            return resultMap["externalId"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "externalId")
          }
        }

        /// The username of the persona as it is displayed on the platform.
        public var handle: String? {
          get {
            return resultMap["handle"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "handle")
          }
        }

        /// The picture URL for the persona.
        public var pictureUrl: String? {
          get {
            return resultMap["pictureUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "pictureUrl")
          }
        }

        /// A ISO 3166-1 alpha-2 country code. Examples: CA, US, CN, DE
        public var countryCode: String? {
          get {
            return resultMap["countryCode"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "countryCode")
          }
        }

        /// Continental geographical region, one of: AF, AN, AS, EU, NA, OC, SA
        public var region: String? {
          get {
            return resultMap["region"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "region")
          }
        }

        /// Whether the persona is verifiably linked to a Scout user.
        public var isVerified: Bool? {
          get {
            return resultMap["isVerified"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isVerified")
          }
        }

        /// The platform this persona is on.
        public var platform: Platform? {
          get {
            return (resultMap["platform"] as? ResultMap).flatMap { Platform(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "platform")
          }
        }

        public struct Platform: GraphQLSelectionSet {
          public static let possibleTypes = ["Platform"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("slug", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(slug: String? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Platform", "slug": slug, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The code-safe name of the platform.
          public var slug: String? {
            get {
              return resultMap["slug"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "slug")
            }
          }

          /// The name of the platform.
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class PlayerQuery: GraphQLQuery {
  public let operationDefinition =
    "query Player($title: String, $identifier: String, $segment: String) {\n  player(title: $title, id: $identifier, segment: $segment) {\n    __typename\n    id\n    metadata {\n      __typename\n      key\n      name\n      value\n      displayValue\n    }\n    stats {\n      __typename\n      metadata {\n        __typename\n        key\n        name\n        isReversed\n      }\n      value\n      displayValue\n    }\n    segments {\n      __typename\n      metadata {\n        __typename\n        key\n        name\n        value\n        displayValue\n      }\n      stats {\n        __typename\n        metadata {\n          __typename\n          key\n          name\n          isReversed\n        }\n        value\n        displayValue\n      }\n    }\n  }\n}"

  public var title: String?
  public var identifier: String?
  public var segment: String?

  public init(title: String? = nil, identifier: String? = nil, segment: String? = nil) {
    self.title = title
    self.identifier = identifier
    self.segment = segment
  }

  public var variables: GraphQLMap? {
    return ["title": title, "identifier": identifier, "segment": segment]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("player", arguments: ["title": GraphQLVariable("title"), "id": GraphQLVariable("identifier"), "segment": GraphQLVariable("segment")], type: .object(Player.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(player: Player? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "player": player.flatMap { (value: Player) -> ResultMap in value.resultMap }])
    }

    /// Fetch a player for a given title, by their Persona or System ID.
    public var player: Player? {
      get {
        return (resultMap["player"] as? ResultMap).flatMap { Player(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "player")
      }
    }

    public struct Player: GraphQLSelectionSet {
      public static let possibleTypes = ["Player"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("metadata", type: .list(.object(Metadatum.selections))),
        GraphQLField("stats", type: .list(.object(Stat.selections))),
        GraphQLField("segments", type: .list(.object(Segment.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, metadata: [Metadatum?]? = nil, stats: [Stat?]? = nil, segments: [Segment?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Player", "id": id, "metadata": metadata.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, "stats": stats.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }, "segments": segments.flatMap { (value: [Segment?]) -> [ResultMap?] in value.map { (value: Segment?) -> ResultMap? in value.flatMap { (value: Segment) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// System ID of the player.
      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// Metadata related to this player segment.
      public var metadata: [Metadatum?]? {
        get {
          return (resultMap["metadata"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Metadatum?] in value.map { (value: ResultMap?) -> Metadatum? in value.flatMap { (value: ResultMap) -> Metadatum in Metadatum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, forKey: "metadata")
        }
      }

      /// All stats relating to the this player segment.
      public var stats: [Stat?]? {
        get {
          return (resultMap["stats"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Stat?] in value.map { (value: ResultMap?) -> Stat? in value.flatMap { (value: ResultMap) -> Stat in Stat(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }, forKey: "stats")
        }
      }

      /// Player data segmented into logical pieces. Varies by title.
      public var segments: [Segment?]? {
        get {
          return (resultMap["segments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Segment?] in value.map { (value: ResultMap?) -> Segment? in value.flatMap { (value: ResultMap) -> Segment in Segment(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Segment?]) -> [ResultMap?] in value.map { (value: Segment?) -> ResultMap? in value.flatMap { (value: Segment) -> ResultMap in value.resultMap } } }, forKey: "segments")
        }
      }

      public struct Metadatum: GraphQLSelectionSet {
        public static let possibleTypes = ["Metadata"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("value", type: .scalar(Dynamic.self)),
          GraphQLField("displayValue", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(key: String? = nil, name: String? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Metadata", "key": key, "name": name, "value": value, "displayValue": displayValue])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID/key for the object.
        public var key: String? {
          get {
            return resultMap["key"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "key")
          }
        }

        /// Name of the object
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// Value of the object.
        public var value: Dynamic? {
          get {
            return resultMap["value"] as? Dynamic
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }

        /// Pre-formatted/localized value of the object.
        public var displayValue: String? {
          get {
            return resultMap["displayValue"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayValue")
          }
        }
      }

      public struct Stat: GraphQLSelectionSet {
        public static let possibleTypes = ["Statistic"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("metadata", type: .object(Metadatum.selections)),
          GraphQLField("value", type: .scalar(Dynamic.self)),
          GraphQLField("displayValue", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(metadata: Metadatum? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Statistic", "metadata": metadata.flatMap { (value: Metadatum) -> ResultMap in value.resultMap }, "value": value, "displayValue": displayValue])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The stat's metadata.
        public var metadata: Metadatum? {
          get {
            return (resultMap["metadata"] as? ResultMap).flatMap { Metadatum(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "metadata")
          }
        }

        /// Value of the statistic
        public var value: Dynamic? {
          get {
            return resultMap["value"] as? Dynamic
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }

        /// Pre-formatted/localized value of the statistic.
        public var displayValue: String? {
          get {
            return resultMap["displayValue"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayValue")
          }
        }

        public struct Metadatum: GraphQLSelectionSet {
          public static let possibleTypes = ["StatisticMetadata"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("isReversed", type: .scalar(Bool.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(key: String, name: String? = nil, isReversed: Bool? = nil) {
            self.init(unsafeResultMap: ["__typename": "StatisticMetadata", "key": key, "name": name, "isReversed": isReversed])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Key for referencing the statistic in code.
          public var key: String {
            get {
              return resultMap["key"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "key")
            }
          }

          /// Human friendly name for the stat.
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// Whether or not the statistic's value has a reversed importance. (ie. kills vs. deaths)
          public var isReversed: Bool? {
            get {
              return resultMap["isReversed"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isReversed")
            }
          }
        }
      }

      public struct Segment: GraphQLSelectionSet {
        public static let possibleTypes = ["PlayerSegment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("metadata", type: .list(.object(Metadatum.selections))),
          GraphQLField("stats", type: .list(.object(Stat.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(metadata: [Metadatum?]? = nil, stats: [Stat?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "PlayerSegment", "metadata": metadata.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, "stats": stats.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Metadata related to this player segment.
        public var metadata: [Metadatum?]? {
          get {
            return (resultMap["metadata"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Metadatum?] in value.map { (value: ResultMap?) -> Metadatum? in value.flatMap { (value: ResultMap) -> Metadatum in Metadatum(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, forKey: "metadata")
          }
        }

        /// All stats relating to the this player segment.
        public var stats: [Stat?]? {
          get {
            return (resultMap["stats"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Stat?] in value.map { (value: ResultMap?) -> Stat? in value.flatMap { (value: ResultMap) -> Stat in Stat(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }, forKey: "stats")
          }
        }

        public struct Metadatum: GraphQLSelectionSet {
          public static let possibleTypes = ["Metadata"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Dynamic.self)),
            GraphQLField("displayValue", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(key: String? = nil, name: String? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Metadata", "key": key, "name": name, "value": value, "displayValue": displayValue])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The ID/key for the object.
          public var key: String? {
            get {
              return resultMap["key"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "key")
            }
          }

          /// Name of the object
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// Value of the object.
          public var value: Dynamic? {
            get {
              return resultMap["value"] as? Dynamic
            }
            set {
              resultMap.updateValue(newValue, forKey: "value")
            }
          }

          /// Pre-formatted/localized value of the object.
          public var displayValue: String? {
            get {
              return resultMap["displayValue"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "displayValue")
            }
          }
        }

        public struct Stat: GraphQLSelectionSet {
          public static let possibleTypes = ["Statistic"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("metadata", type: .object(Metadatum.selections)),
            GraphQLField("value", type: .scalar(Dynamic.self)),
            GraphQLField("displayValue", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(metadata: Metadatum? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Statistic", "metadata": metadata.flatMap { (value: Metadatum) -> ResultMap in value.resultMap }, "value": value, "displayValue": displayValue])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The stat's metadata.
          public var metadata: Metadatum? {
            get {
              return (resultMap["metadata"] as? ResultMap).flatMap { Metadatum(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "metadata")
            }
          }

          /// Value of the statistic
          public var value: Dynamic? {
            get {
              return resultMap["value"] as? Dynamic
            }
            set {
              resultMap.updateValue(newValue, forKey: "value")
            }
          }

          /// Pre-formatted/localized value of the statistic.
          public var displayValue: String? {
            get {
              return resultMap["displayValue"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "displayValue")
            }
          }

          public struct Metadatum: GraphQLSelectionSet {
            public static let possibleTypes = ["StatisticMetadata"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("key", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("isReversed", type: .scalar(Bool.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(key: String, name: String? = nil, isReversed: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "StatisticMetadata", "key": key, "name": name, "isReversed": isReversed])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Key for referencing the statistic in code.
            public var key: String {
              get {
                return resultMap["key"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "key")
              }
            }

            /// Human friendly name for the stat.
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// Whether or not the statistic's value has a reversed importance. (ie. kills vs. deaths)
            public var isReversed: Bool? {
              get {
                return resultMap["isReversed"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isReversed")
              }
            }
          }
        }
      }
    }
  }
}

public final class PlayerUpdateSubscription: GraphQLSubscription {
  public let operationDefinition =
    "subscription PlayerUpdate($title: String, $identifier: String, $segment: String) {\n  player(title: $title, id: $identifier, segment: $segment) {\n    __typename\n    id\n    metadata {\n      __typename\n      key\n      name\n      value\n      displayValue\n    }\n    stats {\n      __typename\n      metadata {\n        __typename\n        key\n        name\n        isReversed\n      }\n      value\n      displayValue\n    }\n    segments {\n      __typename\n      metadata {\n        __typename\n        key\n        name\n        value\n        displayValue\n      }\n      stats {\n        __typename\n        metadata {\n          __typename\n          key\n          name\n          isReversed\n        }\n        value\n        displayValue\n      }\n    }\n  }\n}"

  public var title: String?
  public var identifier: String?
  public var segment: String?

  public init(title: String? = nil, identifier: String? = nil, segment: String? = nil) {
    self.title = title
    self.identifier = identifier
    self.segment = segment
  }

  public var variables: GraphQLMap? {
    return ["title": title, "identifier": identifier, "segment": segment]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphSubscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("player", arguments: ["title": GraphQLVariable("title"), "id": GraphQLVariable("identifier"), "segment": GraphQLVariable("segment")], type: .object(Player.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(player: Player? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphSubscription", "player": player.flatMap { (value: Player) -> ResultMap in value.resultMap }])
    }

    public var player: Player? {
      get {
        return (resultMap["player"] as? ResultMap).flatMap { Player(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "player")
      }
    }

    public struct Player: GraphQLSelectionSet {
      public static let possibleTypes = ["Player"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("metadata", type: .list(.object(Metadatum.selections))),
        GraphQLField("stats", type: .list(.object(Stat.selections))),
        GraphQLField("segments", type: .list(.object(Segment.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, metadata: [Metadatum?]? = nil, stats: [Stat?]? = nil, segments: [Segment?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Player", "id": id, "metadata": metadata.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, "stats": stats.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }, "segments": segments.flatMap { (value: [Segment?]) -> [ResultMap?] in value.map { (value: Segment?) -> ResultMap? in value.flatMap { (value: Segment) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// System ID of the player.
      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// Metadata related to this player segment.
      public var metadata: [Metadatum?]? {
        get {
          return (resultMap["metadata"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Metadatum?] in value.map { (value: ResultMap?) -> Metadatum? in value.flatMap { (value: ResultMap) -> Metadatum in Metadatum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, forKey: "metadata")
        }
      }

      /// All stats relating to the this player segment.
      public var stats: [Stat?]? {
        get {
          return (resultMap["stats"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Stat?] in value.map { (value: ResultMap?) -> Stat? in value.flatMap { (value: ResultMap) -> Stat in Stat(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }, forKey: "stats")
        }
      }

      /// Player data segmented into logical pieces. Varies by title.
      public var segments: [Segment?]? {
        get {
          return (resultMap["segments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Segment?] in value.map { (value: ResultMap?) -> Segment? in value.flatMap { (value: ResultMap) -> Segment in Segment(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Segment?]) -> [ResultMap?] in value.map { (value: Segment?) -> ResultMap? in value.flatMap { (value: Segment) -> ResultMap in value.resultMap } } }, forKey: "segments")
        }
      }

      public struct Metadatum: GraphQLSelectionSet {
        public static let possibleTypes = ["Metadata"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("value", type: .scalar(Dynamic.self)),
          GraphQLField("displayValue", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(key: String? = nil, name: String? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Metadata", "key": key, "name": name, "value": value, "displayValue": displayValue])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID/key for the object.
        public var key: String? {
          get {
            return resultMap["key"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "key")
          }
        }

        /// Name of the object
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// Value of the object.
        public var value: Dynamic? {
          get {
            return resultMap["value"] as? Dynamic
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }

        /// Pre-formatted/localized value of the object.
        public var displayValue: String? {
          get {
            return resultMap["displayValue"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayValue")
          }
        }
      }

      public struct Stat: GraphQLSelectionSet {
        public static let possibleTypes = ["Statistic"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("metadata", type: .object(Metadatum.selections)),
          GraphQLField("value", type: .scalar(Dynamic.self)),
          GraphQLField("displayValue", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(metadata: Metadatum? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Statistic", "metadata": metadata.flatMap { (value: Metadatum) -> ResultMap in value.resultMap }, "value": value, "displayValue": displayValue])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The stat's metadata.
        public var metadata: Metadatum? {
          get {
            return (resultMap["metadata"] as? ResultMap).flatMap { Metadatum(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "metadata")
          }
        }

        /// Value of the statistic
        public var value: Dynamic? {
          get {
            return resultMap["value"] as? Dynamic
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }

        /// Pre-formatted/localized value of the statistic.
        public var displayValue: String? {
          get {
            return resultMap["displayValue"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayValue")
          }
        }

        public struct Metadatum: GraphQLSelectionSet {
          public static let possibleTypes = ["StatisticMetadata"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("isReversed", type: .scalar(Bool.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(key: String, name: String? = nil, isReversed: Bool? = nil) {
            self.init(unsafeResultMap: ["__typename": "StatisticMetadata", "key": key, "name": name, "isReversed": isReversed])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Key for referencing the statistic in code.
          public var key: String {
            get {
              return resultMap["key"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "key")
            }
          }

          /// Human friendly name for the stat.
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// Whether or not the statistic's value has a reversed importance. (ie. kills vs. deaths)
          public var isReversed: Bool? {
            get {
              return resultMap["isReversed"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isReversed")
            }
          }
        }
      }

      public struct Segment: GraphQLSelectionSet {
        public static let possibleTypes = ["PlayerSegment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("metadata", type: .list(.object(Metadatum.selections))),
          GraphQLField("stats", type: .list(.object(Stat.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(metadata: [Metadatum?]? = nil, stats: [Stat?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "PlayerSegment", "metadata": metadata.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, "stats": stats.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Metadata related to this player segment.
        public var metadata: [Metadatum?]? {
          get {
            return (resultMap["metadata"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Metadatum?] in value.map { (value: ResultMap?) -> Metadatum? in value.flatMap { (value: ResultMap) -> Metadatum in Metadatum(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Metadatum?]) -> [ResultMap?] in value.map { (value: Metadatum?) -> ResultMap? in value.flatMap { (value: Metadatum) -> ResultMap in value.resultMap } } }, forKey: "metadata")
          }
        }

        /// All stats relating to the this player segment.
        public var stats: [Stat?]? {
          get {
            return (resultMap["stats"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Stat?] in value.map { (value: ResultMap?) -> Stat? in value.flatMap { (value: ResultMap) -> Stat in Stat(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Stat?]) -> [ResultMap?] in value.map { (value: Stat?) -> ResultMap? in value.flatMap { (value: Stat) -> ResultMap in value.resultMap } } }, forKey: "stats")
          }
        }

        public struct Metadatum: GraphQLSelectionSet {
          public static let possibleTypes = ["Metadata"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("value", type: .scalar(Dynamic.self)),
            GraphQLField("displayValue", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(key: String? = nil, name: String? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Metadata", "key": key, "name": name, "value": value, "displayValue": displayValue])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The ID/key for the object.
          public var key: String? {
            get {
              return resultMap["key"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "key")
            }
          }

          /// Name of the object
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// Value of the object.
          public var value: Dynamic? {
            get {
              return resultMap["value"] as? Dynamic
            }
            set {
              resultMap.updateValue(newValue, forKey: "value")
            }
          }

          /// Pre-formatted/localized value of the object.
          public var displayValue: String? {
            get {
              return resultMap["displayValue"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "displayValue")
            }
          }
        }

        public struct Stat: GraphQLSelectionSet {
          public static let possibleTypes = ["Statistic"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("metadata", type: .object(Metadatum.selections)),
            GraphQLField("value", type: .scalar(Dynamic.self)),
            GraphQLField("displayValue", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(metadata: Metadatum? = nil, value: Dynamic? = nil, displayValue: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Statistic", "metadata": metadata.flatMap { (value: Metadatum) -> ResultMap in value.resultMap }, "value": value, "displayValue": displayValue])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The stat's metadata.
          public var metadata: Metadatum? {
            get {
              return (resultMap["metadata"] as? ResultMap).flatMap { Metadatum(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "metadata")
            }
          }

          /// Value of the statistic
          public var value: Dynamic? {
            get {
              return resultMap["value"] as? Dynamic
            }
            set {
              resultMap.updateValue(newValue, forKey: "value")
            }
          }

          /// Pre-formatted/localized value of the statistic.
          public var displayValue: String? {
            get {
              return resultMap["displayValue"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "displayValue")
            }
          }

          public struct Metadatum: GraphQLSelectionSet {
            public static let possibleTypes = ["StatisticMetadata"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("key", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("isReversed", type: .scalar(Bool.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(key: String, name: String? = nil, isReversed: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "StatisticMetadata", "key": key, "name": name, "isReversed": isReversed])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Key for referencing the statistic in code.
            public var key: String {
              get {
                return resultMap["key"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "key")
              }
            }

            /// Human friendly name for the stat.
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// Whether or not the statistic's value has a reversed importance. (ie. kills vs. deaths)
            public var isReversed: Bool? {
              get {
                return resultMap["isReversed"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isReversed")
              }
            }
          }
        }
      }
    }
  }
}

public final class SearchQuery: GraphQLQuery {
  public let operationDefinition =
    "query Search($platform: String, $console: String, $title: String, $identifier: String, $comprehensive: Boolean, $exact: Boolean) {\n  players(platform: $platform, console: $console, title: $title, identifier: $identifier, comprehensive: $comprehensive, exact: $exact) {\n    __typename\n    results {\n      __typename\n      player {\n        __typename\n        playerId\n        handle\n      }\n      persona {\n        __typename\n        id\n        handle\n        pictureUrl\n        countryCode\n        region\n        isVerified\n        platform {\n          __typename\n          slug\n          name\n        }\n      }\n    }\n  }\n}"

  public var platform: String?
  public var console: String?
  public var title: String?
  public var identifier: String?
  public var comprehensive: Bool?
  public var exact: Bool?

  public init(platform: String? = nil, console: String? = nil, title: String? = nil, identifier: String? = nil, comprehensive: Bool? = nil, exact: Bool? = nil) {
    self.platform = platform
    self.console = console
    self.title = title
    self.identifier = identifier
    self.comprehensive = comprehensive
    self.exact = exact
  }

  public var variables: GraphQLMap? {
    return ["platform": platform, "console": console, "title": title, "identifier": identifier, "comprehensive": comprehensive, "exact": exact]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("players", arguments: ["platform": GraphQLVariable("platform"), "console": GraphQLVariable("console"), "title": GraphQLVariable("title"), "identifier": GraphQLVariable("identifier"), "comprehensive": GraphQLVariable("comprehensive"), "exact": GraphQLVariable("exact")], type: .object(Player.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(players: Player? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "players": players.flatMap { (value: Player) -> ResultMap in value.resultMap }])
    }

    /// Search for players based on the specified parameters.
    public var players: Player? {
      get {
        return (resultMap["players"] as? ResultMap).flatMap { Player(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "players")
      }
    }

    public struct Player: GraphQLSelectionSet {
      public static let possibleTypes = ["PlayerSearchResults"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("results", type: .list(.object(Result.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(results: [Result?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "PlayerSearchResults", "results": results.flatMap { (value: [Result?]) -> [ResultMap?] in value.map { (value: Result?) -> ResultMap? in value.flatMap { (value: Result) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The results list.
      public var results: [Result?]? {
        get {
          return (resultMap["results"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Result?] in value.map { (value: ResultMap?) -> Result? in value.flatMap { (value: ResultMap) -> Result in Result(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Result?]) -> [ResultMap?] in value.map { (value: Result?) -> ResultMap? in value.flatMap { (value: Result) -> ResultMap in value.resultMap } } }, forKey: "results")
        }
      }

      public struct Result: GraphQLSelectionSet {
        public static let possibleTypes = ["PlayerSearchResult"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("player", type: .object(Player.selections)),
          GraphQLField("persona", type: .object(Persona.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(player: Player? = nil, persona: Persona? = nil) {
          self.init(unsafeResultMap: ["__typename": "PlayerSearchResult", "player": player.flatMap { (value: Player) -> ResultMap in value.resultMap }, "persona": persona.flatMap { (value: Persona) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// If available, an object representing the associated player.
        public var player: Player? {
          get {
            return (resultMap["player"] as? ResultMap).flatMap { Player(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "player")
          }
        }

        /// If available, an object representing the associated persona.
        public var persona: Persona? {
          get {
            return (resultMap["persona"] as? ResultMap).flatMap { Persona(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "persona")
          }
        }

        public struct Player: GraphQLSelectionSet {
          public static let possibleTypes = ["TitleAlias"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("playerId", type: .scalar(String.self)),
            GraphQLField("handle", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(playerId: String? = nil, handle: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "TitleAlias", "playerId": playerId, "handle": handle])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// System ID of the player. Can ALWAYS be used to fetch stats using the Player API.
          public var playerId: String? {
            get {
              return resultMap["playerId"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "playerId")
            }
          }

          /// The username of the player typically as it is displayed in game.
          public var handle: String? {
            get {
              return resultMap["handle"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "handle")
            }
          }
        }

        public struct Persona: GraphQLSelectionSet {
          public static let possibleTypes = ["Persona"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(String.self)),
            GraphQLField("handle", type: .scalar(String.self)),
            GraphQLField("pictureUrl", type: .scalar(String.self)),
            GraphQLField("countryCode", type: .scalar(String.self)),
            GraphQLField("region", type: .scalar(String.self)),
            GraphQLField("isVerified", type: .scalar(Bool.self)),
            GraphQLField("platform", type: .object(Platform.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: String? = nil, handle: String? = nil, pictureUrl: String? = nil, countryCode: String? = nil, region: String? = nil, isVerified: Bool? = nil, platform: Platform? = nil) {
            self.init(unsafeResultMap: ["__typename": "Persona", "id": id, "handle": handle, "pictureUrl": pictureUrl, "countryCode": countryCode, "region": region, "isVerified": isVerified, "platform": platform.flatMap { (value: Platform) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// ID of the persona.
          public var id: String? {
            get {
              return resultMap["id"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The username of the persona as it is displayed on the platform.
          public var handle: String? {
            get {
              return resultMap["handle"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "handle")
            }
          }

          /// The picture URL for the persona.
          public var pictureUrl: String? {
            get {
              return resultMap["pictureUrl"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "pictureUrl")
            }
          }

          /// A ISO 3166-1 alpha-2 country code. Examples: CA, US, CN, DE
          public var countryCode: String? {
            get {
              return resultMap["countryCode"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "countryCode")
            }
          }

          /// Continental geographical region, one of: AF, AN, AS, EU, NA, OC, SA
          public var region: String? {
            get {
              return resultMap["region"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "region")
            }
          }

          /// Whether the persona is verifiably linked to a Scout user.
          public var isVerified: Bool? {
            get {
              return resultMap["isVerified"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isVerified")
            }
          }

          /// The platform this persona is on.
          public var platform: Platform? {
            get {
              return (resultMap["platform"] as? ResultMap).flatMap { Platform(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "platform")
            }
          }

          public struct Platform: GraphQLSelectionSet {
            public static let possibleTypes = ["Platform"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("slug", type: .scalar(String.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(slug: String? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "Platform", "slug": slug, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The code-safe name of the platform.
            public var slug: String? {
              get {
                return resultMap["slug"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "slug")
              }
            }

            /// The name of the platform.
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }
      }
    }
  }
}

public final class RawQuery: GraphQLQuery {
  public let operationDefinition =
    "query Raw($title: String, $method: String, $parameters: [Dynamic]) {\n  raw(title: $title, method: $method, parameters: $parameters)\n}"

  public var title: String?
  public var method: String?
  public var parameters: [Dynamic?]?

  public init(title: String? = nil, method: String? = nil, parameters: [Dynamic?]? = nil) {
    self.title = title
    self.method = method
    self.parameters = parameters
  }

  public var variables: GraphQLMap? {
    return ["title": title, "method": method, "parameters": parameters]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("raw", arguments: ["title": GraphQLVariable("title"), "method": GraphQLVariable("method"), "parameters": GraphQLVariable("parameters")], type: .scalar(RawData.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(raw: RawData? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "raw": raw])
    }

    /// (Partner access only) Fetch raw data from a title.
    public var raw: RawData? {
      get {
        return resultMap["raw"] as? RawData
      }
      set {
        resultMap.updateValue(newValue, forKey: "raw")
      }
    }
  }
}

public final class PersonaQuery: GraphQLQuery {
  public let operationDefinition =
    "query Persona($id: String) {\n  persona(id: $id) {\n    __typename\n    id\n    handle\n    pictureUrl\n    countryCode\n    region\n    isVerified\n    platform {\n      __typename\n      slug\n      name\n    }\n  }\n}"

  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("persona", arguments: ["id": GraphQLVariable("id")], type: .object(Persona.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(persona: Persona? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "persona": persona.flatMap { (value: Persona) -> ResultMap in value.resultMap }])
    }

    /// Fetch a persona by its ID.
    public var persona: Persona? {
      get {
        return (resultMap["persona"] as? ResultMap).flatMap { Persona(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "persona")
      }
    }

    public struct Persona: GraphQLSelectionSet {
      public static let possibleTypes = ["Persona"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("handle", type: .scalar(String.self)),
        GraphQLField("pictureUrl", type: .scalar(String.self)),
        GraphQLField("countryCode", type: .scalar(String.self)),
        GraphQLField("region", type: .scalar(String.self)),
        GraphQLField("isVerified", type: .scalar(Bool.self)),
        GraphQLField("platform", type: .object(Platform.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, handle: String? = nil, pictureUrl: String? = nil, countryCode: String? = nil, region: String? = nil, isVerified: Bool? = nil, platform: Platform? = nil) {
        self.init(unsafeResultMap: ["__typename": "Persona", "id": id, "handle": handle, "pictureUrl": pictureUrl, "countryCode": countryCode, "region": region, "isVerified": isVerified, "platform": platform.flatMap { (value: Platform) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// ID of the persona.
      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The username of the persona as it is displayed on the platform.
      public var handle: String? {
        get {
          return resultMap["handle"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "handle")
        }
      }

      /// The picture URL for the persona.
      public var pictureUrl: String? {
        get {
          return resultMap["pictureUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureUrl")
        }
      }

      /// A ISO 3166-1 alpha-2 country code. Examples: CA, US, CN, DE
      public var countryCode: String? {
        get {
          return resultMap["countryCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "countryCode")
        }
      }

      /// Continental geographical region, one of: AF, AN, AS, EU, NA, OC, SA
      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      /// Whether the persona is verifiably linked to a Scout user.
      public var isVerified: Bool? {
        get {
          return resultMap["isVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isVerified")
        }
      }

      /// The platform this persona is on.
      public var platform: Platform? {
        get {
          return (resultMap["platform"] as? ResultMap).flatMap { Platform(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "platform")
        }
      }

      public struct Platform: GraphQLSelectionSet {
        public static let possibleTypes = ["Platform"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("slug", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(slug: String? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Platform", "slug": slug, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The code-safe name of the platform.
        public var slug: String? {
          get {
            return resultMap["slug"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "slug")
          }
        }

        /// The name of the platform.
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class TitlesQuery: GraphQLQuery {
  public let operationDefinition =
    "query Titles {\n  titles {\n    __typename\n    id\n    slug\n    name\n    boxArtUrl\n    heroArtUrl\n    platforms {\n      __typename\n      name\n      slug\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("titles", type: .list(.object(Title.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(titles: [Title?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "titles": titles.flatMap { (value: [Title?]) -> [ResultMap?] in value.map { (value: Title?) -> ResultMap? in value.flatMap { (value: Title) -> ResultMap in value.resultMap } } }])
    }

    /// A list of all the titles supported.
    public var titles: [Title?]? {
      get {
        return (resultMap["titles"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Title?] in value.map { (value: ResultMap?) -> Title? in value.flatMap { (value: ResultMap) -> Title in Title(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Title?]) -> [ResultMap?] in value.map { (value: Title?) -> ResultMap? in value.flatMap { (value: Title) -> ResultMap in value.resultMap } } }, forKey: "titles")
      }
    }

    public struct Title: GraphQLSelectionSet {
      public static let possibleTypes = ["Title"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("slug", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("boxArtUrl", type: .scalar(String.self)),
        GraphQLField("heroArtUrl", type: .scalar(String.self)),
        GraphQLField("platforms", type: .list(.object(Platform.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, slug: String, name: String, boxArtUrl: String? = nil, heroArtUrl: String? = nil, platforms: [Platform?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Title", "id": id, "slug": slug, "name": name, "boxArtUrl": boxArtUrl, "heroArtUrl": heroArtUrl, "platforms": platforms.flatMap { (value: [Platform?]) -> [ResultMap?] in value.map { (value: Platform?) -> ResultMap? in value.flatMap { (value: Platform) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The title ID.
      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The code-safe name for the title.
      public var slug: String {
        get {
          return resultMap["slug"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "slug")
        }
      }

      /// The name of the title.
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The URL for the title's box art.
      public var boxArtUrl: String? {
        get {
          return resultMap["boxArtUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "boxArtUrl")
        }
      }

      /// The URL for a background to use for the title.
      public var heroArtUrl: String? {
        get {
          return resultMap["heroArtUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "heroArtUrl")
        }
      }

      /// A list of the platforms that are supported by the title.
      public var platforms: [Platform?]? {
        get {
          return (resultMap["platforms"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Platform?] in value.map { (value: ResultMap?) -> Platform? in value.flatMap { (value: ResultMap) -> Platform in Platform(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Platform?]) -> [ResultMap?] in value.map { (value: Platform?) -> ResultMap? in value.flatMap { (value: Platform) -> ResultMap in value.resultMap } } }, forKey: "platforms")
        }
      }

      public struct Platform: GraphQLSelectionSet {
        public static let possibleTypes = ["Platform"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("slug", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, slug: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Platform", "name": name, "slug": slug])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The name of the platform.
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// The code-safe name of the platform.
        public var slug: String? {
          get {
            return resultMap["slug"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "slug")
          }
        }
      }
    }
  }
}

public final class TitleQuery: GraphQLQuery {
  public let operationDefinition =
    "query Title($identifier: String) {\n  title(identifier: $identifier) {\n    __typename\n    id\n    slug\n    name\n    boxArtUrl\n    heroArtUrl\n    platforms {\n      __typename\n      name\n      slug\n    }\n  }\n}"

  public var identifier: String?

  public init(identifier: String? = nil) {
    self.identifier = identifier
  }

  public var variables: GraphQLMap? {
    return ["identifier": identifier]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["GraphQuery"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("title", arguments: ["identifier": GraphQLVariable("identifier")], type: .object(Title.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: Title? = nil) {
      self.init(unsafeResultMap: ["__typename": "GraphQuery", "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }])
    }

    /// Fetch a specific title based on the specified parameters.
    public var title: Title? {
      get {
        return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "title")
      }
    }

    public struct Title: GraphQLSelectionSet {
      public static let possibleTypes = ["Title"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("slug", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("boxArtUrl", type: .scalar(String.self)),
        GraphQLField("heroArtUrl", type: .scalar(String.self)),
        GraphQLField("platforms", type: .list(.object(Platform.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, slug: String, name: String, boxArtUrl: String? = nil, heroArtUrl: String? = nil, platforms: [Platform?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Title", "id": id, "slug": slug, "name": name, "boxArtUrl": boxArtUrl, "heroArtUrl": heroArtUrl, "platforms": platforms.flatMap { (value: [Platform?]) -> [ResultMap?] in value.map { (value: Platform?) -> ResultMap? in value.flatMap { (value: Platform) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The title ID.
      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The code-safe name for the title.
      public var slug: String {
        get {
          return resultMap["slug"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "slug")
        }
      }

      /// The name of the title.
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The URL for the title's box art.
      public var boxArtUrl: String? {
        get {
          return resultMap["boxArtUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "boxArtUrl")
        }
      }

      /// The URL for a background to use for the title.
      public var heroArtUrl: String? {
        get {
          return resultMap["heroArtUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "heroArtUrl")
        }
      }

      /// A list of the platforms that are supported by the title.
      public var platforms: [Platform?]? {
        get {
          return (resultMap["platforms"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Platform?] in value.map { (value: ResultMap?) -> Platform? in value.flatMap { (value: ResultMap) -> Platform in Platform(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Platform?]) -> [ResultMap?] in value.map { (value: Platform?) -> ResultMap? in value.flatMap { (value: Platform) -> ResultMap in value.resultMap } } }, forKey: "platforms")
        }
      }

      public struct Platform: GraphQLSelectionSet {
        public static let possibleTypes = ["Platform"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("slug", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, slug: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Platform", "name": name, "slug": slug])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The name of the platform.
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// The code-safe name of the platform.
        public var slug: String? {
          get {
            return resultMap["slug"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "slug")
          }
        }
      }
    }
  }
}