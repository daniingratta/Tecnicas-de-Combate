module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "presionGolpe" $ do
    it "Golpe de 150 horas sobre un puf debe ser 375 " $ do
      presionGolpe 150 "puf" `shouldBe` 375
  describe "gomuGomu" $ do
    it "La tecnica Gomu Gomu ejerce una presion de 450 sobre el puf " $ do
      gomuGomu "puf" `shouldBe` 450
  describe "normalesConsecutivos" $ do
    it "La tecnica golpes normales consecutivos ejerce una presión de 81 sobre el puf" $ do
      normalesConsecutivos "puf" `shouldBe` 600
  describe "esobjDificil" $ do
    it "La bolsa de entrenamiento es un objetivo difícil " $ do
      esobjDificil  "bolsa de entrenamiento" `shouldBe` True
    it "El puf no es un objetivo difícil " $ do
      esobjDificil "puf" `shouldBe` False
  describe "esobjAccesible" $ do
    it "Una bolsa de entrenamiento es accesible " $ do
      esobjAccesible "bolsa de entrenamiento" `shouldBe` True
    it "Una puf no es accesible " $ do
      esobjAccesible "puf" `shouldBe` False
      