module Main exposing(main)
import Html exposing (..)
import Html.Attributes exposing (..)

email : String -> Html msg
email addr =
    div [] [
        text "Email: ", 
        a [ href ("mailto:" ++ addr) ] [ text addr ] 
    ]

sns : String -> String -> String -> Html msg
sns header base account = 
    div [] [
        text header,
        a [ href (base ++ account) ] [ text ("@" ++ account) ] 
    ]

github : String -> Html msg
github = 
    sns "GitHub: " "https://github.com/" 

twitter : String -> Html msg
twitter =
    sns "Twitter: " "https://twitter.com/"

linkedin =
    sns "LikedIn: " "https://www.linkedin.com/in/"

portrait =
    img [ src "images/self_portrait.JPG" ] []

myself = 
    section [] [
        h1 [] [ text "Takeo Imai (今井健男)" ], 
        email "takeo.bono@gmail.com",
        github "bonotake",
        twitter "bonotake",
        linkedin "takeo-imai-57985216",
        p [] [
            text "I'm a software engineer and a researcher at ",
            a [ href "https://idein.jp/" ] [ text "Idein Inc." ],
            text ", ",
            text "where I'm currently tackling with verification of deep learning models ",
            text "and deep learning compilers (or \"graph compilers\"). ",
            text "For the research, I'm jointly working with ",
            a [ href "https://group-mmm.org/~ichiro/" ] [ text "Ichiro Hasuo" ],
            text ", ",
            a [ href "http://research.nii.ac.jp/~f-ishikawa/en/" ] [ text "Fuyuki Ishikawa" ],
            text ", ",
            text "and other members in ",
            a [ href "http://www.jst.go.jp/erato/hasuo/en/index.html" ] [ text "Erato MMSD project" ],
            text ". ",
            text ""
        ]
    ]

history = 
    section [] [
        text "I received my Master's degree from ",
        a [ href "http://www.yl.is.s.u-tokyo.ac.jp/~yonezawa/home.html" ] [ text "Akinori Yonezawa" ],
        text " at University of Tokyo. ",
        text "Then, I had experienced several years of studying eagerly with ",
        a [ href "http://nicosia.is.s.u-tokyo.ac.jp/members/hagiya.html" ] [ text "Masami Hagiya" ],
        text ". ",
        text "Once I was a visiting scientist at MIT, where ",
        a [ href "http://people.csail.mit.edu/dnj/" ] [text "Daniel Jackson"],
        text " and ",
        a [ href "https://homes.cs.washington.edu/~mernst/" ] [text "Michael Ernst"],
        text " co-hosted me. ",
        text ""
    ]

main = 
    div [] [
        portrait,
        myself,
        history,
        section [] [
            h2 [] [ text "Interests" ],
            p [] [ text "Deep learning, formal methods, programming languages, maths, and logics." ]
        ]
    ]
