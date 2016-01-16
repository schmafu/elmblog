module Blog where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Json.Decode as Json
import Signal exposing (Signal, Address)
import String
import Window

type alias Model = Int

type Action
    = NoOp
    | Add
    
update : Action -> Model -> Model
update action model = 
    case action of
        NoOp -> model
        
        Add ->
            model + 1

view : Address Action -> Model -> Html
view address model =
    div []
        [
         text(toString model)
             
        ]

helloStyle : Attribute 
helloStyle = 
    style
        [ ("font-size", "50px")]

