// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FilmListItemView_film: Clouds.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString { """
    fragment FilmListItemView_film on Film {
      __typename
      title
      releaseDate
    }
    """ }

  public let __data: DataDict
  public init(data: DataDict) { __data = data }

  public static var __parentType: ParentType { Clouds.Objects.Film }
  public static var __selections: [Selection] { [
    .field("title", String?.self),
    .field("releaseDate", String?.self),
  ] }

  public var title: String? { __data["title"] }
  public var releaseDate: String? { __data["releaseDate"] }
}
