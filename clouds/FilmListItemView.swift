//
//  FilmListItemView.swift
//  Films
//
//  Created by Dennis Wilkins on 11/11/22.
//

import SwiftUI

struct FilmListItemViewGrapqlDefinitions {
    @gql var film = """
    fragment FilmListItemView_film on Film {
       title
       releaseDate
    }
    """
}

struct FilmListItemView: View {
    var film: FilmListItemView_film$data;
    
    var body: some View {
        VStack {
            if film.title != nil {
              Text(film.title)
            }
            if film.releaseDate != nil {
                Text(film.releaseDate!)
            }
        }
    }
}

struct FilmListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let film = FilmListItemView_film$data(releaseDate: "Last Year", title: "Long Time Ago", fragmentType: "Fragment");

        FilmListItemView(film:film);
    }
}
