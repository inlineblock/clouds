/**
 * @generated SignedSource<<edbcf60a1b9bc243c1f1d99ade508fec>>
 * @lightSyntaxTransform
 * @nogrep
 */

//// swiftlint:disable all
//import Amphion
//import Foundation
//
//
//// export type FilmListViewQuery$variables
//struct FilmListViewQuery$variables: Encodable {
//}
//
//// export type FilmListViewQuery$data
//struct FilmListViewQuery$data: Decodable {
//  private(set) var allFilms: allFilms?;
//  struct allFilms: Decodable {
//    private(set) var edges: Array<edges?>?;
//    struct edges: Decodable {
//      private(set) var node: node?;
//      struct node: Decodable {
//        var id: String?;
//        var title: String?;
//      }
//    }
//  }
//}
//
//
//struct FilmListViewQuery: Amphion.Operation {
//    typealias TResponse = FilmListViewQuery$data;
//    typealias TVariables =  FilmListViewQuery$variables;
//    
//    struct JSONResponse: Decodable {
//        var data: FilmListViewQuery$data;
//    }
//    
//    var type = AmphionOperationType.Query;
//    
//    func factory(json: Data) throws -> TResponse {
//        let decoder = JSONDecoder()
//        let response = try! decoder.decode(JSONResponse.self, from: json)
//        return response.data;
//    }
//    var variables: TVariables;
//    var operationName = "FilmListViewQuery";
//    var text: String? = """
//        query FilmListViewQuery {
//          allFilms(first: 5) {
//            edges {
//              node {
//                 id
//                 title
//              }
//            }
//          }
//        }
//""";
//    var id: String? = nil;
//}
////FilmListViewQuery(variables: FilmListViewQuery$variables());
