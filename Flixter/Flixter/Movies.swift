//
//  File.swift
//  Flixter
//
//  Created by Jane Calnick on 9/19/23.
//

import Foundation

struct Movies{
    let title : String
    let overview : String
    let poster_path : URL
    let vote_average : Double
    let vote_count : Int
    let popularity : Double
    
}
extension Movies{
        
        static var mockMovies : [Movies] = [
        
            Movies(title: "Barbie",
                   overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
                   poster_path:URL(string:"https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
                   vote_average: 7.3,
                   vote_count: 4668,
                   popularity: 1763.378),
            
            Movies(title: "Talk to me",
                   overview: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.",
                   poster_path: URL(string:"https://image.tmdb.org/t/p/w500/kdPMUMJzyYAc4roD52qavX0nLIC.jpg")!,
                   vote_average: 7.3,
                   vote_count: 613,
                   popularity: 2019.964),
            
            Movies(title: "Meg 2: The Trench",
                   overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
                   poster_path: URL(string:"https://image.tmdb.org/t/p/w500/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
                   vote_average: 7,
                   vote_count: 1790,
                   popularity: 1672.92),
            
            Movies(title: "Elemental",
                   overview: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.",
                   poster_path: URL(string:"https://image.tmdb.org/t/p/w500/6oH378KUfCEitzJkm07r97L0RsZ.jpg")!,
                   vote_average: 7.8,
                   vote_count: 2124,
                   popularity:346.165),
            
            Movies(title: "The Little Mermaid",
                   overview: "The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.",
                   poster_path: URL(string:"https://image.tmdb.org/t/p/w500/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg")!,
                   vote_average: 6.6,
                   vote_count: 2023,
                   popularity: 439.941)
        
        ]
    }
    

