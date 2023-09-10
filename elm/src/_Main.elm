module Main exposing (..)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Browser



-- Model
type alias Model = Int

initialModel : Model
initialModel = 0

-- Update
type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment -> model + 1
        Decrement -> model - 1

-- View
view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]

-- Main

main =
    Browser.sandbox { init = initialModel, view = view, update = update }