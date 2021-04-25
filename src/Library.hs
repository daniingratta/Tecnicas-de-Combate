module Library where
import PdePreludat

type Horas = Number
type Objetivo = String
type Presion = Number

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poder horas / fortaleza objetivo

poder :: Horas -> Number
poder = (* 15)

fortaleza :: Objetivo -> Number
fortaleza = (2*) . length

type Golpe = Objetivo -> Number

gomuGomu :: Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe 
normalesConsecutivos = presionGolpe 240

esobjDificil :: String -> Bool
esobjDificil = (<100) . gomuGomu 

esobjAccesible :: String -> Bool
esobjAccesible = estaEntre . normalesConsecutivos . focalizoObj

estaEntre :: Number -> Bool
estaEntre x = 200< x && x < 400

focalizoObj :: String -> String
focalizoObj = take 7






