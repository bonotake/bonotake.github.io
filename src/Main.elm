module Main exposing(main)
import Html exposing (..)

main = 
    div [] [
        section [] [
            h1 [] [ text "Takeo Imai" ], 
            p [] [ text "I'm a software engineer and a researcher in CS/SE." ]
        ],
        section [] [
            h2 [] [ text "Interests" ],
            p [] [ text "Deep learning, formal methods, programming languages, maths, and logics." ]
        ]
    ]
