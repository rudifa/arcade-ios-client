// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetBooksQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetBooks {
      books {
        __typename
        title
        rating
        author
      }
    }
    """

  public let operationName: String = "GetBooks"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("books", type: .list(.object(Book.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(books: [Book?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "books": books.flatMap { (value: [Book?]) -> [ResultMap?] in value.map { (value: Book?) -> ResultMap? in value.flatMap { (value: Book) -> ResultMap in value.resultMap } } }])
    }

    public var books: [Book?]? {
      get {
        return (resultMap["books"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Book?] in value.map { (value: ResultMap?) -> Book? in value.flatMap { (value: ResultMap) -> Book in Book(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Book?]) -> [ResultMap?] in value.map { (value: Book?) -> ResultMap? in value.flatMap { (value: Book) -> ResultMap in value.resultMap } } }, forKey: "books")
      }
    }

    public struct Book: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Book"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("author", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(title: String? = nil, rating: Int? = nil, author: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Book", "title": title, "rating": rating, "author": author])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var rating: Int? {
        get {
          return resultMap["rating"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "rating")
        }
      }

      public var author: String? {
        get {
          return resultMap["author"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }
    }
  }
}
