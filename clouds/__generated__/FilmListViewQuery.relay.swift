/**
 * @generated SignedSource<<4dec333d4cc6b8c7dabade6cb220c05c>>
 * @lightSyntaxTransform
 * @nogrep
 */

// swiftlint:disable all

import Amphion;
import Foundation;

// export type FilmListViewQuery$variables 
struct FilmListViewQuery$variables: AmphionDataContainer {}
// export type FilmListViewQuery$data 
struct FilmListViewQuery$data: AmphionDataContainer {
  private(set) var allFilms: allFilms?;
  struct allFilms: AmphionDataContainer {
    private(set) var edges: Array<edges?>?;
    struct edges: AmphionDataContainer {
      private(set) var node: node?;
      struct node: AmphionDataContainer {
        private(set) var id: String?;
        private(set) var title: String?;
        func asFilm() -> FilmListItemView_film$data {
          return FilmListItemView_film$data(
            data: self._data
          );
        }
      }
    }
  }
}

struct FilmListViewQuery: Amphion.Operation {
  typealias TResponse = FilmListViewQuery$data;
  typealias TVariables = FilmListViewQuery$variables;
  struct AmphionJSONResponse: Codable {
    var data = FilmListViewQuery$data;
  }
  private(set) var id: String? = nil;
  private(set) var operationName: String = "FilmListViewQuery";
  
  private(set) var text: String? = """
query FilmListViewQuery {
  allFilms(first: 5) {
    edges {
      node {
        ...FilmListItemView_film
        title
        id
      }
    }
  }
}

fragment FilmListItemView_film on Film {
  title
  releaseDate
}

""";
  private(set) var type: Amphion.AmphionOperationType = .Query;
}

  /* relay hash = "ed5c512e22400b2bed92448b81d5a50c" */
