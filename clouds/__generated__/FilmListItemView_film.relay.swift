/**
 * @generated SignedSource<<e152cc9f7ffde43911e83e0283aa1f8e>>
 * @lightSyntaxTransform
 * @nogrep
 */

// swiftlint:disable all

import Amphion;
import Foundation;

// export type FilmListItemView_film$data 
struct FilmListItemView_film$data: AmphionDataContainer, Decodable {
 
  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: String.self);
    self.releaseDate = try? values.decode(String.self, forKey: "releaseDate");
    self.title = try values.decode(String.self, forKey: "title");
  }
  
  public init(from clone: FilmListItemView_film$data) {
    self.releaseDate = clone.releaseDate;
    self.title = clone.title;
  }
  
  public init(from data: Data) throws {
    self = try JSONDecoder().decode(FilmListItemView_film$data.self, from: data);
  }
  
  let releaseDate: String?;
  let title: String;
}

// export type FilmListItemView_film$key 
struct FilmListItemView_film$key: AmphionFragmentKey {
  typealias TData = FilmListItemView_film$data;
  var _data: FilmListItemView_film$data;
  private(set) var _id: String;
}


  /* relay hash = "40cdbe6fdaec23e38cff3c1f7eb009bb" */
