module Types exposing (..)
import Time exposing (..)

type alias Model = 
  {x : Float, y : Float, key : ButtonState, vel : Float
  , bullets : List(BUpdater), lastTime : Maybe Time
  , width : Float, height : Float, enemies : List(EnemyUpdater)
  , motiondots : List((Float, Float)), secondCount : Int
  , shootType : ShootType, pUps : List((Float, Float, ShootType))}

type Msg
  = Key ButtonState | Tick Time | Tock Time

type ButtonState
  = Left | Right | Up | Down 
  | UpRight | UpLeft | DownRight | DownLeft 
  | Shoot | One | Two | Three | Four | None

type BUpdater = BUpdater (Float, Float) (Float -> BUpdater) |
                HUpdater (Float, Float) (Model -> Float -> BUpdater)

-- the floats go : x, y, width, height
type EnemyUpdater = EnemyUpdater (Float, Float, Float, Float) (Model -> Float -> EnemyUpdater)

type ShootType = Straight | Sine | Homing | Triple
