-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/effects/time.html

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Time exposing (Time, second)
import Keyboard
import Char
import List


main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL

type alias Ball
  = {x : Int, y: Int, xv : Int, yv : Int}

type alias Wall = {height : Int, width : Int, x : Int, y : Int}

type alias Model = {x : Int, y : Int, key : ButtonState, ball : Ball, walls : List(Wall)}


--[rect [ x (toString model.x), y (toString model.y), width "60", height "10", fill "#0B79CE" ] [],

walls : List(Wall)
walls = [ 
          {height=10, width=60, x=245, y=245},
          {height=120, width=30, x=312, y=52},
          {height=10, width=500, x=0, y=0},     -- top boarder
          {height=10, width=500, x=0, y=490},  -- bottom boarder
          {height=500, width=10, x=0, y=0},     -- left boarder
          {height=500, width=10, x=490, y=0}    -- right boarder
        ]

init : (Model, Cmd Msg)
init =
  ({x=30,
    y=440,
    key=None, 
    ball={x=245, y=245, xv=1, yv=2},
    walls=walls
    }, Cmd.none)

-- UPDATE


type Msg
  = Key ButtonState | Tick Time

type ButtonState
  = Left | Right | None | Both

keyToVel key =
    case key of
        Left -> -10
        Right -> 10
        _ -> 0

isCloseEnough: Int -> Int -> Int -> Bool
isCloseEnough x width x2 =
  ((abs (x + (width//2) - x2)) < (width//2))

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Key q -> ({model|key=q, x = model.x + keyToVel q, 
                         walls=(List.append [{height=10, width=60, x=model.x, y=model.y}] (List.drop 1 model.walls))}
                  , Cmd.none)
        Tick time -> 
          ({model| ball=(bounceBallY model (bounceBallX model (updateBall model.ball)))}, Cmd.none)
      
-- SUBSCRIPTIONS
-- 37 is left
-- 39 is right
handleDown : (Keyboard.KeyCode, ButtonState) -> Msg
handleDown state =
    case state of
        (37, Right) -> Key Both
        (39, Left) -> Key Both
        (37, None) -> Key Left
        (39, None) -> Key Right
        (_ , current) -> Key current

handleUp : (Keyboard.KeyCode, ButtonState) -> Msg
handleUp state =
    case state of
        (37, Both) -> Key Right
        (39, Both) -> Key Left
        (37, Left) -> Key None
        (39, Right) -> Key None
        (_ , current) -> Key current



-- on my browser keyboard presses does not work properly
-- so I'm using ups and downs
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.batch
    [
      Keyboard.downs (\k -> handleDown (k, model.key))
      , Keyboard.ups (\k -> handleUp (k, model.key))
      , Time.every (second/60) Tick
     ]

updateBall: Ball -> Ball
updateBall ball = 
  ({ ball | x=ball.x + ball.xv, 
            y=ball.y + ball.yv})

bounceBallY: Model -> Ball -> Ball
bounceBallY model ball =
  if (List.foldr 
        (\wall bounce ->
          (bounce || 
            (isCloseEnough wall.x wall.width ball.x) && 
              (((abs (ball.y - wall.y)) < 5) || ((abs (ball.y - (wall.y + wall.height))) < 5))))
        False
        model.walls) then
    {ball | yv = -ball.yv}
  else
      ball

bounceBallX: Model -> Ball -> Ball
bounceBallX model ball =
  if (List.foldr 
        (\wall bounce ->
          (bounce || 
            (isCloseEnough wall.y wall.height ball.y) && 
              (((abs (ball.x - wall.x)) < 5) || ((abs (ball.x - (wall.x + wall.width))) < 5))))
        False
        model.walls) then
    {ball | xv = -ball.xv}
  else
      ball


-- VIEW


view : Model -> Html Msg
view model = 
   svg [ viewBox "0 0 500 500", width "500px" ]
       (List.append
          --paddle
         [rect [ x (toString model.ball.x), y (toString model.ball.y), width "10", height "10", fill "#0B79CE" ] []]  -- ball
         (List.map
           (\(wall) ->
              rect [ x (toString wall.x), y (toString wall.y), width (toString wall.width), height (toString wall.height), fill "#0B79CE" ] [])
           model.walls))

  
