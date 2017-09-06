module View exposing (..)

import Types exposing (..)
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Html exposing (Html)

bulletToImage: BUpdater -> Svg Msg
bulletToImage updater = 
  case updater of
    BUpdater (x,y) _ -> circle [ cx (toString x), cy (toString y), r "3", fill "#ff0000"][]
    HUpdater (x,y) _ -> circle [ cx (toString x), cy (toString y), r "3", fill "#ff0000"][]

enemyToImage: EnemyUpdater -> Svg Msg
enemyToImage updater =
  case updater of
    EnemyUpdater (x1, y1, width1, height1) _ -> 
      rect [ x (toString (x1 - width1/2))
           , y (toString (y1 - height1/2))
           , width (toString width1)
           , height (toString height1)
           , fill "#ffff00"] []

motiondotToImage: (Float, Float) -> Svg Msg
motiondotToImage (xp, yp) = 
  rect [x (toString xp), y (toString yp), width "5", height "10", fill "#CCCCCC"] []

powerupsToImage: (Float, Float, ShootType) -> Svg Msg
powerupsToImage (x, y, stype) = 
  case stype of
    Straight -> circle [ cx (toString x), cy (toString y), r "10", fill "#124354"] []
    Sine -> circle [ cx (toString x), cy (toString y), r "10", fill "#f56113"] []
    Homing -> circle [ cx (toString x), cy (toString y), r "10", fill "#ee2948"] []
    Triple -> circle [ cx (toString x), cy (toString y), r "10", fill "#999cb4"] []


view : Model -> Html Msg
view model = 
   svg [ viewBox "0 0 500 500", width "500px" ]
    (List.append
      (List.map powerupsToImage model.pUps)
      (List.append
        (List.map motiondotToImage model.motiondots)
       (List.append 
         (List.append
           (List.map bulletToImage model.bullets)
           (List.map enemyToImage model.enemies))
         [ rect [ x (toString (model.x - model.width/2)), 
                  y (toString (model.y - model.height/2)), 
                  width (toString model.width), 
                  height (toString model.height), 
                  fill "#0B79CE" ] []
         ]
       )))