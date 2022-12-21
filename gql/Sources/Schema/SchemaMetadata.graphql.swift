// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == Clouds.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == Clouds.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == Clouds.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == Clouds.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Root": return Clouds.Objects.Root
    case "FilmsConnection": return Clouds.Objects.FilmsConnection
    case "FilmsEdge": return Clouds.Objects.FilmsEdge
    case "Film": return Clouds.Objects.Film
    case "Person": return Clouds.Objects.Person
    case "Planet": return Clouds.Objects.Planet
    case "Species": return Clouds.Objects.Species
    case "Starship": return Clouds.Objects.Starship
    case "Vehicle": return Clouds.Objects.Vehicle
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
