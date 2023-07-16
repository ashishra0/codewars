def search(titles, term): 
    return list(filter(lambda title: term in title.lower(), titles))

titles = ['The Big Bang Theory', 
          'How I Met Your Mother', 
          'Dexter', 'Breaking Bad', 
          'Doctor Who', 'The Hobbit', 
          'Pacific Rim', 
          'Pulp Fiction', 
          'The Avengers', 
          'Shining'
          ]

search(titles, 'ho')