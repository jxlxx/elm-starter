module Main exposing (..)


import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main : Program () Model Msg
main = 
    Browser.element 
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

type alias Model = 
    { a_number : Int
    , a_string : String
    }

type Msg 
    = MessageOne
    | MessageTwo
        
init _ = ( Model 42 "hello", Cmd.none )
    
update msg model =
    case msg of
        MessageOne -> ( model, Cmd.none )
        MessageTwo -> ( model, Cmd.none )
    
subscriptions _ =
    Sub.none
    
view model = 
    div [] [ h1 [] [ text model.a_string] ]


