// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class FilmListViewQuery: GraphQLQuery {
  public static let operationName: String = "FilmListViewQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      """
      query FilmListViewQuery {
        allFilms(first: 5) {
          __typename
          edges {
            __typename
            node {
              __typename
              ...FilmListItemView_film
            }
          }
        }
      }
      """,
      fragments: [FilmListItemView_film.self]
    ))

  public init() {}

  public struct Data: Clouds.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { Clouds.Objects.Root }
    public static var __selections: [Selection] { [
      .field("allFilms", AllFilms?.self, arguments: ["first": 5]),
    ] }

    public var allFilms: AllFilms? { __data["allFilms"] }

    /// AllFilms
    ///
    /// Parent Type: `FilmsConnection`
    public struct AllFilms: Clouds.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { Clouds.Objects.FilmsConnection }
      public static var __selections: [Selection] { [
        .field("edges", [Edge?]?.self),
      ] }

      public var edges: [Edge?]? { __data["edges"] }

      /// AllFilms.Edge
      ///
      /// Parent Type: `FilmsEdge`
      public struct Edge: Clouds.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { Clouds.Objects.FilmsEdge }
        public static var __selections: [Selection] { [
          .field("node", Node?.self),
        ] }

        public var node: Node? { __data["node"] }

        /// AllFilms.Edge.Node
        ///
        /// Parent Type: `Film`
        public struct Node: Clouds.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ParentType { Clouds.Objects.Film }
          public static var __selections: [Selection] { [
            .fragment(FilmListItemView_film.self),
          ] }

          public var title: String? { __data["title"] }
          public var releaseDate: String? { __data["releaseDate"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(data: DataDict) { __data = data }

            public var filmListItemView_film: FilmListItemView_film { _toFragment() }
          }
        }
      }
    }
  }
}
