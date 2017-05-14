module Main exposing (main)

import Native.Lorem
import Html exposing (program, Html, text)
import Task exposing (Task)


type alias Model =
    String


type alias Msg =
    String


ipsum : Task Never String
ipsum =
    Native.Lorem.ipsum


init : ( Model, Cmd Msg )
init =
    "Loading..." ! [ ipsum |> Task.perform identity ]


update : Msg -> Model -> ( Model, Cmd Msg )
update newModel _ =
    newModel ! []


view : Model -> Html a
view model =
    text model


main : Program Never Model Msg
main =
    program
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
