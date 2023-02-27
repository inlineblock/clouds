//
//  FilmListItemView.swift
//  Films
//
//  Created by Dennis Wilkins on 11/11/22.
//

import SwiftUI
import Amphion

struct FilmListItemViewGrapqlDefinitions {
    @gql var film = """
    fragment FilmListItemView_film on Film {
       title
       releaseDate
    }
    """
}

struct FilmListItemView: View {
    @useFragment var film: FilmListItemView_film;
    
    var body: some View {
      VStack(alignment: .leading, content: {
            if let title = film.title {
              Text(title).bold()
            }
            if let releaseDate = film.releaseDate {
              Text(releaseDate)
            }
        })
    }
}

struct FilmListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let film = FilmListItemView_film(
          releaseDate: "Last Year",
          title: "Long Time Ago",
          id: "Fake"
        );

        FilmListItemView(film:film);
    }
}
