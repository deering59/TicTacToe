//
//  ViewController.swift
//  TicTacToe
//
//  Created by dee on 27/04/16.
//  Copyright © 2016 DeEring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var button00: UIButton!
  @IBOutlet weak var button01: UIButton!
  @IBOutlet weak var button02: UIButton!
  @IBOutlet weak var button10: UIButton!
  @IBOutlet weak var button11: UIButton!
  @IBOutlet weak var button12: UIButton!
  @IBOutlet weak var button20: UIButton!
  @IBOutlet weak var button21: UIButton!
  @IBOutlet weak var button22: UIButton!
  
  
  // Red - X, Blue - O, White - empty
  let buttonImageRed = UIImage(named: "Button-Red")
  let buttonImageBlue = UIImage(named: "Button-Blue")
  let buttonImageWhite = UIImage(named: "Button-White")
  
  //messages to present
  let alertMessage = "Woa... don't press it twice. Choose another one."
  let winnerMessage = "Winner, winner!"
  let drawMessage = "Draw. No winners."
  
  // false - button is not pressed
  var button00State = false
  var button01State = false
  var button02State = false
  var button10State = false
  var button11State = false
  var button12State = false
  var button20State = false
  var button21State = false
  var button22State = false
  
  // indication that game is at the beginning
  var gameState = 0
  
  //Creating a matrix to log each move of a player
  struct Matrix {
    let rows: Int, columns: Int
    var grid: [Int]
    init(rows: Int, columns: Int) {
      self.rows = rows
      self.columns = columns
      grid = Array(count: rows * columns, repeatedValue: 0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
      return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Int {
      get {
        assert(indexIsValidForRow(row, column: column), "Index out of range")
        return grid[(row * columns) + column]
      }
      set {
        assert(indexIsValidForRow(row, column: column), "Index out of range")
        grid[(row * columns) + column] = newValue
      }
    }
  }
  
  var gameMatrix = Matrix(rows: 3, columns: 3)
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func pressedButton00() {
    showAlert(button00State, message: alertMessage)
    if button00State == false {
      if gameState % 2 == 0 {
        button00.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[0,0] = 2
      }
      else if  gameState % 2 != 0{
        button00.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[0,0] = 1
      }
    }
    button00State = true
    checkForWinner()
    
  }

  @IBAction func pressedButton01() {
    showAlert(button01State, message: alertMessage)
    if button01State == false {
      if gameState % 2 == 0 {
        button01.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[0,1] = 2
      }
      else if  gameState % 2 != 0{
        button01.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[0,1] = 1
      }
    }
    button01State = true
    checkForWinner()
  }
  
  @IBAction func pressedButton02() {
    showAlert(button02State, message: alertMessage)
    if button02State == false {
      if gameState % 2 == 0 {
        button02.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[0,2] = 2
      }
      else if  gameState % 2 != 0{
        button02.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[0,2] = 1
      }
    }
    button02State = true
    checkForWinner()
    
  }
  
  @IBAction func pressedButton10() {
    showAlert(button10State, message: alertMessage)
    if button10State == false {
      if gameState % 2 == 0 {
        button10.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[1,0] = 2
      }
      else if  gameState % 2 != 0{
        button10.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[1,0] = 1
      }
    }
    button10State = true
    checkForWinner()
    
  }
  
  @IBAction func pressedButton11() {
    showAlert(button11State, message: alertMessage)
    if button11State == false {
      if gameState % 2 == 0 {
        button11.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[1,1] = 2
      }
      else if  gameState % 2 != 0{
        button11.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[1,1] = 1
      }
    }
    button11State = true
    checkForWinner()
    
  }
  
  @IBAction func pressedButton12() {
    showAlert(button12State, message: alertMessage)
    if button12State == false {
      if gameState % 2 == 0 {
        button12.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[1,2] = 2
      }
      else if  gameState % 2 != 0{
        button12.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[1,2] = 1
      }
    }
    button12State = true
    checkForWinner()
    
  }
  
  @IBAction func pressedButton20() {
    showAlert(button20State, message: alertMessage)
    if button20State == false {
      if gameState % 2 == 0 {
        button20.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[2,0] = 2
      }
      else if  gameState % 2 != 0{
        button20.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[2,0] = 1
      }
    }
    button20State = true
    checkForWinner()
    
  }
  
  @IBAction func pressedButton21() {
    showAlert(button21State, message: alertMessage)
    if button21State == false {
      if gameState % 2 == 0 {
        button21.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[2,1] = 2
      }
      else if  gameState % 2 != 0{
        button21.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[2,1] = 1
      }
    }
    button21State = true
    checkForWinner()
  }
  
  @IBAction func pressedButton22() {
    showAlert(button22State, message: alertMessage)
    if button22State == false {
      if gameState % 2 == 0 {
        button22.setBackgroundImage(buttonImageRed, forState: .Normal)
        gameState += 1
        gameMatrix[2,2] = 2
      }
      else if  gameState % 2 != 0{
        button22.setBackgroundImage(buttonImageBlue, forState: .Normal)
        gameState += 1
        gameMatrix[2,2] = 1
      }
    }
    button22State = true
    checkForWinner()
    
  }
  
  // Show alert when button is clicked twice
  func showAlert(stateCheck: Bool, message: String) {
    if stateCheck {
      let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
      let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
      alert.addAction(action)
      presentViewController(alert, animated: true, completion: nil)
    }
  }
  
  @IBAction func resetGame(){
    gameState = 0
    
    button00State = false
    button01State = false
    button02State = false
    button10State = false
    button11State = false
    button12State = false
    button20State = false
    button21State = false
    button22State = false
    
    //turining buttons to white
    button00.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button01.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button02.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button10.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button11.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button12.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button20.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button21.setBackgroundImage(buttonImageWhite, forState: .Normal)
    button22.setBackgroundImage(buttonImageWhite, forState: .Normal)
    
    //resetting matrix values to zero
    for i in 0..<3 {
      for j in 0..<3 {
        gameMatrix[i,j] = 0
      }
    }
  }
//check combinations
    func checkForWinner(){
      print(gameState)
      if ((gameMatrix[0,0]==1 && gameMatrix[0,1]==1 && gameMatrix[0,2]==1) ||
         (gameMatrix[0,0]==2 && gameMatrix[0,1]==2 && gameMatrix[0,2]==2))
      {
        // showing alert and reset game
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[1,0]==1 && gameMatrix[1,1]==1 && gameMatrix[1,2]==1) ||
        (gameMatrix[1,0]==2 && gameMatrix[1,1]==2 && gameMatrix[1,2]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[2,0]==1 && gameMatrix[2,1]==1 && gameMatrix[2,2]==1) ||
        (gameMatrix[2,0]==2 && gameMatrix[2,1]==2 && gameMatrix[2,2]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[0,0]==1 && gameMatrix[1,0]==1 && gameMatrix[2,0]==1) ||
        (gameMatrix[0,0]==2 && gameMatrix[1,0]==2 && gameMatrix[2,0]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[0,1]==1 && gameMatrix[1,1]==1 && gameMatrix[2,1]==1) ||
        (gameMatrix[0,1]==2 && gameMatrix[1,1]==2 && gameMatrix[2,1]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[0,2]==1 && gameMatrix[1,2]==1 && gameMatrix[2,2]==1) ||
        (gameMatrix[0,2]==2 && gameMatrix[1,2]==2 && gameMatrix[2,2]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[0,0]==1 && gameMatrix[1,1]==1 && gameMatrix[2,2]==1) ||
        (gameMatrix[0,0]==2 && gameMatrix[1,1]==2 && gameMatrix[2,2]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if ((gameMatrix[0,2]==1 && gameMatrix[1,1]==1 && gameMatrix[2,0]==1) ||
        (gameMatrix[0,2]==2 && gameMatrix[1,1]==2 && gameMatrix[2,0]==2)){
        showAlert(true, message: winnerMessage)
        resetGame()
      }
      else if (gameState == 9){
        showAlert(true, message: drawMessage)
        resetGame()
      }
    }
    
}
