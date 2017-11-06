import Html exposing (..) 

main = 
  Html.program 
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL

type alias Post =
  { id : Int
  , title : String
  , body : String
  , user : String
  }

type alias Model = 
  { posts : List Post }

init : (Model, Cmd msg)
init =
  (Model [], Cmd.none)



-- UPDATE

type Msg
  = Add
  | Update Int String

update : Msg -> Model -> (Model, Cmd msg)
update msg model =
  case msg of
    Add ->
      (model, Cmd.none)
    Update id title ->
      (model, Cmd.none)

-- VIEW

view : Model -> Html msg
view model =
  h1 [] [text "Title"]


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
