//
//  ContentView.swift
//  clouds
//
//  Created by Dennis Wilkins on 11/11/22.
//

import SwiftUI
import Amphion

struct FilmListViewGraphQlDefinitions {
    @gql var FilmListViewQuery = """
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
    """
}

struct FilmListView: View {
    var body: some View {
    Amphion.OperationView(operation: FilmListViewQuery(variables: FilmListViewQuery.TVariables())) { state in
            VStack {
                switch state {
                case .Failed(_):
                    Text("Failed");
                case .Loading:
                    ProgressView()
                case .Complete(let response):
                    Text("response");
                    if let edges = response.allFilms?.edges {
                        List{
                            ForEach(edges, id: \.!.node?.id) { edge in
                                if let title = edge?.node?.title {
                                    Text(title)
                                }
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct FilmListView_Previews: PreviewProvider {
    static var previews: some View {
        FilmListView()
    }
}
