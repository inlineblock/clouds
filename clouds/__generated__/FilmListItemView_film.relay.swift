/**
 * @generated SignedSource<<2f29b8c68a4ece31c14f599ab55b321d>>
 * @lightSyntaxTransform
 * @nogrep
 */

// swiftlint:disable all

import Amphion;
import SwiftUI;

// export type FilmListItemView_film$data 
class FilmListItemView_film: Fragment, WithId {
  @Published private(set) var releaseDate: String?;
  @Published private(set) var title: String?;
  @Published private(set) var id: String;
  

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: String.self)
    self.releaseDate = try container.decodeIfPresent(String.self, forKey: "releaseDate")
    self.title = try container.decodeIfPresent(String.self, forKey: "title")
    self.id = try container.decode(String.self, forKey: "id");
    try! super.init(from: decoder);
  }
  
  public init(releaseDate: String?, title: String?, id: String) {
    self.releaseDate = releaseDate;
    self.title = title;
    self.id = id;
    super.init();
  }
  
}

