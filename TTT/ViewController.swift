//
//  ViewController.swift
//  TTT
//
//  Created by Matthew Mitchell on 7/11/16.
//  Copyright © 2016 Matthew Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var turn = 0
    var arr = [[0,0,0],
               [0,0,0],
               [0,0,0]]
    
    
    @IBAction func buttonPressed(sender: UIButton)
    {
// 2 will be team Blue
        if turn % 2 == 0 {
            sender.backgroundColor = UIColor.blueColor()
            turn += 1
            sender.enabled = false
            if sender.tag == 1 {
                arr[0][0] = 2
                print(arr)
            }
            else if sender.tag == 2 {
                arr[0][1] = 2
                print(arr)
            }
            else if sender.tag == 3 {
                arr[0][2] = 2
                print(arr)
            }
            else if sender.tag == 4 {
                arr[1][0] = 2
                print(arr)
            }
            else if sender.tag == 5 {
                arr[1][1] = 2
                print(arr)
            }
            else if sender.tag == 6 {
                arr[1][2] = 2
                print(arr)
            }
            else if sender.tag == 7 {
                arr[2][0] = 2
                print(arr)
            }
            else if sender.tag == 8 {
                arr[2][1] = 2
                print(arr)
            }
            else if sender.tag == 9 {
                arr[2][2] = 2
                print(arr)
            }
            check()
            
        }
            
        else {
            sender.backgroundColor = UIColor.redColor()
            turn = turn + 1
            sender.enabled = false
            if sender.tag == 1 {
                arr[0][0] = 1
                print(arr)
            }
            else if sender.tag == 2 {
                arr[0][1] = 1
                print(arr)
            }
            else if sender.tag == 3 {
                arr[0][2] = 1
                print(arr)
            }
            else if sender.tag == 4 {
                arr[1][0] = 1
                print(arr)
            }
            else if sender.tag == 5 {
                arr[1][1] = 1
                print(arr)
            }
            else if sender.tag == 6 {
                arr[1][2] = 1
                print(arr)
            }
            else if sender.tag == 7 {
                arr[2][0] = 1
                print(arr)
            }
            else if sender.tag == 8 {
                arr[2][1] = 1
                print(arr)
            }
            else if sender.tag == 9 {
                arr[2][2] = 1
                print(arr)
            }
            check()
        }
    }
    @IBAction func resetButton(sender: UIButton) {
// reset the colors, turn and the array
        reset()
//        turn = 0
//    
//        for Button in gridButtons {
//            Button.backgroundColor = UIColor.lightGrayColor()
//            Button.enabled = true
//        }
//        arr = [[0,0,0],
//               [0,0,0],
//               [0,0,0]]
//        print(arr)
        
    }

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet var gridButtons: [UIButton]!
    
    func check() {
        if arr[0][0] == 1 {
            if arr[0][1] == 1{
                if arr[0][2] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[1][0] == 1 {
            if arr[1][1] == 1{
                if arr[1][2] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[2][0] == 1 {
            if arr[2][1] == 1{
                if arr[2][2] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[0][0] == 1 {
            if arr[1][0] == 1{
                if arr[2][0] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[0][1] == 1 {
            if arr[1][1] == 1{
                if arr[2][1] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[0][2] == 1 {
            if arr[1][2] == 1{
                if arr[2][2] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[0][0] == 1 {
            if arr[1][1] == 1{
                if arr[2][2] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        if arr[0][2] == 1 {
            if arr[1][1] == 1{
                if arr[2][0] == 1 {
                    topLabel.text = "Red wins!"
                    reset()
                }
            }
        }
        
// check blue team
        
        if arr[0][0] == 2 {
            if arr[0][1] == 2 {
                if arr[0][2] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[1][0] == 2 {
            if arr[1][1] == 2 {
                if arr[1][2] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[2][0] == 2 {
            if arr[2][1] == 2 {
                if arr[2][2] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[0][0] == 2 {
            if arr[1][0] == 2 {
                if arr[2][0] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[0][1] == 2 {
            if arr[1][1] == 2 {
                if arr[2][1] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[0][2] == 2 {
            if arr[1][2] == 2 {
                if arr[2][2] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[0][0] == 2 {
            if arr[1][1] == 2 {
                if arr[2][2] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
        if arr[0][2] == 2 {
            if arr[1][1] == 2 {
                if arr[2][0] == 2 {
                    topLabel.text = "Blue wins!"
                    reset()
                }
            }
        }
    }
    
    func reset() {
        turn = 0
        
        for Button in gridButtons {
            Button.backgroundColor = UIColor.lightGrayColor()
            Button.enabled = true
        }
        arr = [[0,0,0],
               [0,0,0],
               [0,0,0]]
        print(arr)
    }
}



