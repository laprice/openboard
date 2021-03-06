module Ui exposing (card, linkBtn, heading)

import Css exposing (..)
import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src)
import Html.Styled.Events exposing (onClick)


{-| A reusable card module
-}
card : List (Attribute msg) -> List (Html msg) -> Html msg
card =
    styled div
        [ borderRadius (px 4)
        , padding (px (gridUnit * 4))
        , boxShadow4 (px 1) (px 1) (px 5) theme.dark
        , margin (px (8 * gridUnit))
        ]

{-| A reusable heading
-}
heading : List (Attribute msg) -> List (Html msg) -> Html msg
heading =
    styled h1
        [ h1Style ]


{-| A reusable link button 
-}
linkBtn : List (Attribute msg) -> List (Html msg) -> Html msg
linkBtn =
    styled a
        [ padding4 (px 8) (px 16) (px 8) (px 16)
        , color (rgb 250 250 250)
        , hover
            [ backgroundColor theme.hover
            , textDecoration underline
            ]
        , display block
        , margin (px 10)
        , backgroundColor theme.primary
        , cursor pointer
        , border (px 0)
        , borderRadius (px 3)
        , fontSize (Css.em 1)
        ]


{-| Styles for h1
-}
h1Style : Style
h1Style =
    Css.batch
        [ fontFamilies [ "Palatino Linotype", "Georgia", "serif" ]
        , fontSize (6 * gridUnit |> px)
        , fontWeight bold
        , marginTop (px 0)
        ]

{-| Theme colors
-}
theme =
    { primary = hex "55af6a"
    , secondary = rgb 250 240 230
    , hover = hex "3ebc5b"
    , dark = hex "999"
    }

{-| Grid unit to keep everything lined up and balanced
-}
gridUnit : Float
gridUnit =
    8