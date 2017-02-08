//
//  ViewController.swift
//  Reflex
//
//  Created by Heath Baron-morgan on 07/06/2016.
//  Copyright © 2016-2017 Heath Baron-morgan. All rights reserved.
//

import UIKit
import AVFoundation
import Social
import GameKit


class ViewController: UIViewController, GKGameCenterControllerDelegate {
    
    var current = 0
    var score = 0
    var timeVar:TimeInterval = 5
    var buttonValue = 0
    var endGameValue = 0
    var inter = 0
    var first = 0
    var randomButtonValue = 0
    var butNeed = 0
    var nesValue = 21
    var xp = 0
    var highscore = 0
    var level = 0
    var gamexp = 0
    var barvalue:Float = 0
    var modelName = ""
    var roll = 0
    let defaults = UserDefaults.standard
    var winsound = URL(fileURLWithPath: Bundle.main.path(forResource: "gamenoise", ofType: "aiff")!)
    var losesound = URL(fileURLWithPath: Bundle.main.path(forResource: "lose", ofType: "wav")!)
    var levelInter = 1
    
    var audioPlayer = AVAudioPlayer()
    
    var images = ["0.png", "1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png", "10.png", "11.png", "12.png", "13.png", "14.png", "15.png", "16.png", "17.png", "18.png", "19.png", "20.png", "21.png", "22.png", "23.png", "24.png", "25.png", "26.png", "27.png", "28.png", "29.png", "30.png", "31.png", "32.png", "33.png", "34.png", "35.png", "36.png", "37.png", "38.png", "39.png", "40.png", "41.png", "42.png", "43.png", "44.png", "45.png"]
    
    @IBOutlet weak var nesImage: UIImageView!
    
    @IBOutlet weak var xpLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var multiLbl: UILabel!
    
    
    @IBOutlet weak var lifeLbl: UILabel!
    
    @IBOutlet weak var image0: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet var backgroudView: UIView!
    @IBOutlet weak var topHalf: UIView!
    @IBOutlet weak var bottomHalf: UIView!
    @IBOutlet weak var nesView: UIView!
    @IBOutlet weak var topCrusher: UIView!
    @IBOutlet weak var bottomCrusher: UIView!
    @IBOutlet weak var scoreView: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var topRightButtonView: UIView!
    @IBOutlet weak var topLeftButtonView: UIView!
    @IBOutlet weak var bottomLeftButtonView: UIView!
    @IBOutlet weak var bottomRightButtonVIew: UIView!
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    @IBOutlet weak var topCrusherSub: UIView!
    @IBOutlet weak var bottomCrusherSub: UIView!
    
    //START SCREEN
    @IBOutlet weak var startView: UIView!
    @IBOutlet weak var StartView1: UIView!
    @IBOutlet weak var startTitle: UILabel!
    @IBOutlet weak var startView2: UIView!
    @IBOutlet weak var startFirstLevelmage: UIImageView!
    @IBOutlet weak var startFirstLevelLbl: UILabel!
    @IBOutlet weak var startFirstLevelTitle: UILabel!
    @IBOutlet weak var startLevelViewTopRight: UIView!
    @IBOutlet weak var startlevelHighscoreTitle: UILabel!
    @IBOutlet weak var startLevelCurrentScoreTItle: UILabel!
    @IBOutlet weak var startLevelTopRightView: UIView!
    @IBOutlet weak var startLevelBottomLeftView: UIView!
    @IBOutlet weak var startLevelHighscoreLbl: UILabel!
    @IBOutlet weak var startLevelhighscoreimage: UIImageView!
    @IBOutlet weak var startLevelBottomRightView: UIView!
    @IBOutlet weak var StartLevelCurrentScoreImage: UIImageView!
    @IBOutlet weak var startLevelCurentScoreLbl: UILabel!
    @IBOutlet weak var startView3: UIView!
    @IBOutlet weak var startSettingsVIew: UIView!
    @IBOutlet weak var startSettingsImage: UIImageView!
    @IBOutlet weak var startSettingsButton: UIButton!
    @IBOutlet weak var startPLayView: UIView!
    @IBOutlet weak var startPlayImage: UIImageView!
    @IBOutlet weak var startPlayButton: UIButton!
    @IBOutlet weak var startView4: UIView!
    @IBOutlet weak var startlifeView: UIView!
    @IBOutlet weak var startLifeImage: UIImageView!
    @IBOutlet weak var startLifeButton: UIButton!
    @IBOutlet weak var startShareView: UIView!
    @IBOutlet weak var startShareImage: UIImageView!
    @IBOutlet weak var startShareButton: UIButton!
    
    func closeStart() {
        UIView.animate(withDuration: 0.5, animations: {
            self.startView.alpha = 0
            self.StartView1.alpha = 0
            self.startTitle.alpha = 0
            self.startView2.alpha = 0
            self.startFirstLevelLbl.alpha = 0
            self.startFirstLevelmage.alpha = 0
            self.startFirstLevelTitle.alpha = 0
            self.startLevelViewTopRight.alpha = 0
            self.startlevelHighscoreTitle.alpha = 0
            self.startlevelHighscoreTitle.alpha = 0
            self.startLevelCurrentScoreTItle.alpha = 0
            self.startLevelTopRightView.alpha = 0
            self.startLevelBottomLeftView.alpha = 0
            self.startLevelHighscoreLbl.alpha = 0
            self.startLevelhighscoreimage.alpha = 0
            self.startLevelBottomRightView.alpha = 0
            self.StartLevelCurrentScoreImage.alpha = 0
            self.startLevelCurentScoreLbl.alpha = 0
            self.startView3.alpha = 0
            self.startSettingsVIew.alpha = 0
            self.startSettingsImage.alpha = 0
            self.startSettingsButton.alpha = 0
            self.startPLayView.alpha = 0
            self.startPlayImage.alpha = 0
            self.startPlayButton.alpha = 0
            self.startView4.alpha = 0
            self.startlifeView.alpha = 0
            self.startLifeImage.alpha = 0
            self.startLifeButton.alpha = 0
            self.startShareView.alpha = 0
            self.startShareImage.alpha = 0
            self.startShareButton.alpha = 0
        })
    }
    
    func openStart() {
        UIView.animate(withDuration: 0, animations: {
            self.startView.alpha = 1
            self.StartView1.alpha = 1        
            self.startTitle.alpha = 1
            self.startView2.alpha = 1
            self.startLevelViewTopRight.alpha = 1
            self.startLevelTopRightView.alpha = 1
            self.startLevelBottomLeftView.alpha = 1
            self.startLevelBottomRightView.alpha = 1
            self.startView3.alpha = 1
            self.startSettingsVIew.alpha = 1
            self.startSettingsImage.alpha = 1
            self.startSettingsButton.alpha = 1
            self.startPLayView.alpha = 1
            self.startPlayImage.alpha = 1
            self.startPlayButton.alpha = 1
            self.startView4.alpha = 1
            self.startlifeView.alpha = 1
            self.startLifeImage.alpha = 1
            self.startLifeButton.alpha = 1
            self.startShareView.alpha = 1
            self.startShareImage.alpha = 1
            self.startShareButton.alpha = 1
        })
        
    }
    
    
    @IBAction func playFunc(_ sender: AnyObject) {
        if defaults.integer(forKey: "audio") == 1 {
            do {
                // Preperation
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            } catch _ {
            }
            do {
                try AVAudioSession.sharedInstance().setActive(true)
            } catch _ {
            }
            
            // Play the sound
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: winsound)
            } catch _{
            }
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        
        closeStart()
        startGame()
    }
    
    @IBAction func settingsFunc(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3, animations: {
            self.settingsView.alpha = 1
            self.view1.alpha = 1
            self.view1subview.alpha = 1
            self.settingstitle.alpha = 1
            self.view2.alpha = 1
            self.view2Subview.alpha = 1
            self.soundLbl.alpha = 1
            self.view2Subview2.alpha = 1
            self.auidoSwitch.alpha = 1
            self.view2subview3.alpha = 1
            self.soundLblreal.alpha = 1
            self.soundView.alpha = 1
            self.view3Subview.alpha = 1
            self.view3.alpha = 1
            self.goPremiumButton.alpha = 1
            self.settingsreturnButton.alpha = 1
            self.view4.alpha = 1
            self.view4Subview.alpha = 1
        })
    }
    
    //settings assets
    
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view1subview: UIView!
    @IBOutlet weak var settingstitle: UILabel!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view2Subview: UIView!
    @IBOutlet weak var soundLbl: UILabel!
    @IBOutlet weak var view2Subview2: UIView!
    @IBOutlet weak var soundView: UIView!
    @IBOutlet weak var soundLblreal: UILabel!
    @IBOutlet weak var view2subview3: UIView!
    @IBOutlet weak var auidoSwitch: UISwitch!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view3Subview: UIView!
    @IBOutlet weak var goPremiumButton: UIButton!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view4Subview: UIView!
    @IBOutlet weak var settingsreturnButton: UIButton!
    
    @IBAction func goPremiumFunc(_ sender: AnyObject) {
        
    }
    
    @IBAction func returnSettingsFunc(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3, animations: {
            self.settingsView.alpha = 0
            self.view1.alpha = 0
            self.view1subview.alpha = 0
            self.settingstitle.alpha = 0
            self.view2.alpha = 0
            self.view2Subview.alpha = 0
            self.soundLbl.alpha = 0
            self.view2Subview2.alpha = 0
            self.auidoSwitch.alpha = 0
            self.view2subview3.alpha = 0
            self.soundLblreal.alpha = 0
            self.soundView.alpha = 0
            self.view3Subview.alpha = 0
            self.view3.alpha = 0
            self.goPremiumButton.alpha = 0
            self.settingsreturnButton.alpha = 0
            self.view4.alpha = 0
            self.view4Subview.alpha = 0
        })
        
    }
    
    func getAudio() {
        
        if auidoSwitch.isOn {
            auidoSwitch.setOn(true, animated:true)
            defaults.set(1, forKey: "audio")
            
        } else {
            auidoSwitch.setOn(false, animated:true)
            defaults.set(0, forKey: "audio")
        }
        
    }
    
    func audioData() {
        if (defaults.integer(forKey: "audio") as Int?)! == 1 {
            auidoSwitch.setOn(true, animated:true)
        } else {
            auidoSwitch.setOn(false, animated:true)
        }
    }
    
    @IBAction func audioSwitchFunc(_ sender: AnyObject) {
        getAudio()
    }
    //end settings assets
    @IBOutlet weak var realLifeButton: UIButton!
    @IBOutlet weak var quitButton: UIButton!
    @IBAction func quitFunc(_ sender: AnyObject) {
        //endgamehere
        closeInter()
        firstLog()
        xp += gamexp
        xpCalc()
        highScore()
        openStart()
        loadGoals()
        saveHighscore()
    }
    
    //interlevelasstes
    
    @IBOutlet weak var interView: UIView!
    @IBOutlet weak var interBox: UIView!
    @IBOutlet weak var interTitleView: UIView!
    @IBOutlet weak var interTitleLbl: UILabel!
    @IBOutlet weak var interInfoVire: UIView!
    @IBOutlet weak var info1: UIView!
    @IBOutlet weak var info1round: UIView!
    @IBOutlet weak var interMultiLbl: UILabel!
    @IBOutlet weak var info2: UIView!
    @IBOutlet weak var info2Round: UIView!
    @IBOutlet weak var interScoreLbl: UILabel!
    @IBOutlet weak var info3: UIView!
    @IBOutlet weak var info3Round: UIView!
    @IBOutlet weak var interXpLbl: UILabel!
    @IBOutlet weak var interView3: UIView!
    @IBOutlet weak var interView3Sub: UIView!
    @IBOutlet weak var intera1: UIView!
    @IBOutlet weak var intera2: UIView!
    @IBOutlet weak var intera3: UIView!
    @IBOutlet weak var intera4: UIView!
    @IBOutlet weak var intera5: UIView!
    @IBOutlet weak var interRound1: UIView!
    @IBOutlet weak var interRound2: UIView!
    @IBOutlet weak var interIMage1: UIImageView!
    @IBOutlet weak var interImage2: UIImageView!
    @IBOutlet weak var quitLbl: UILabel!
    @IBOutlet weak var intercontinue: UILabel!
    
    func closeInter() {
        UIView.animate(withDuration: 0.3, animations: {
            self.realLifeButton.alpha = 0
            self.quitButton.alpha = 0
            self.interView.alpha = 0
            self.interTitleView.alpha = 0
            self.interTitleLbl.alpha = 0
            self.interInfoVire.alpha = 0
            self.info1.alpha = 0
            self.info1round.alpha = 0
            self.interMultiLbl.alpha = 0
            self.info2.alpha = 0
            self.info2Round.alpha = 0
            self.interScoreLbl.alpha = 0
            self.info3.alpha = 0
            self.info3Round.alpha = 0
            self.interXpLbl.alpha = 0
            self.interView3.alpha = 0
            self.interView3Sub.alpha = 0
            self.intera1.alpha = 0
            self.intera2.alpha = 0
            self.intera3.alpha = 0
            self.intera4.alpha = 0
            self.intera5.alpha = 0
            self.interRound1.alpha = 0
            self.interRound2.alpha = 0
            self.lifeLbl.alpha = 0
            self.interIMage1.alpha = 0
            self.interImage2.alpha = 0
            self.interBox.alpha = 0
            self.quitLbl.alpha = 0
            self.intercontinue.alpha = 0
        })
    }
    
    func openInter() {
        
        
        UIView.animate(withDuration: 0.3, animations: {
            self.realLifeButton.alpha = 1
            self.quitButton.alpha = 1
            self.interView.alpha = 1
            self.interTitleView.alpha = 1
            self.interTitleLbl.alpha = 1
            self.interInfoVire.alpha = 1
            self.info1.alpha = 1
            self.info1round.alpha = 1
            self.interMultiLbl.alpha = 1
            self.info2.alpha = 1
            self.info2Round.alpha = 1
            self.interScoreLbl.alpha = 1
            self.info3.alpha = 1
            self.info3Round.alpha = 1
            self.interXpLbl.alpha = 1
            self.interView3.alpha = 1
            self.interView3Sub.alpha = 1
            self.intera1.alpha = 1
            self.intera2.alpha = 1
            self.intera3.alpha = 1
            self.intera4.alpha = 1
            self.intera5.alpha = 1
            self.interRound1.alpha = 1
            self.interRound2.alpha = 1
            self.lifeLbl.alpha = 1
            self.interIMage1.alpha = 1
            self.interImage2.alpha = 1
            self.interBox.alpha = 1
            self.quitLbl.alpha = 1
            self.intercontinue.alpha = 1
        })
        
        interXpLbl.text = "\(gamexp) XP"
        interScoreLbl.text = "\(score)"
        interMultiLbl.text = multiLbl.text
        
        
    }
    
    
    @IBOutlet weak var lifePreview: UIView!
    //interlevelasstes end
    
    @IBAction func lifeFunc(_ sender: AnyObject) {
        closeInter()
        if UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives") != 0 {
            var templ = UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives")
            templ -= 1
            UserDefaults.standard.set(templ, forKey: "com.HBM.Reflex.lives")
            lifeLbl.text = "\(UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives"))"
            closeStart()
            butNeed = 0
            first = 0
            current = 0
            buttonValue = 0
            endGameValue = 0
            inter = 0
            randomButtonValue = 0
            startSerie()
        } else if UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives") == 0 {
            //buy more lives
            lifePreview.alpha = 1
            livesInfoTitle.text = "NO LIVES AVAILABLE!"
            buyMoreLivesButton.setTitle("GET MORE \n    LIVES?", for: UIControlState())
            dissmissLivesButton.setTitle("NO THANKS", for: UIControlState())
            UIView.animate(withDuration: 0.3, animations: {
                self.lifeView.alpha = 1
                self.lifeBoxView.alpha = 1
                self.lifeBoxView2.alpha = 1
                self.lifeButtonsView.alpha = 1
                self.lifeButtonsView2.alpha = 1
                self.buyMoreLivesButton.alpha = 1
                self.dissmissLivesButton.alpha = 1
                self.livesInfoBox.alpha = 1
                self.livesInfoTitle.alpha = 1
            })
            firstLog()
            xp += gamexp
            xpCalc()
            highScore()
            openStart()
            
        }
        
    }
    
    //life assets
    
    @IBOutlet weak var lifeView: UIView!
    @IBOutlet weak var lifeBoxView: UIView!
    @IBOutlet weak var lifeBoxView2: UIView!
    @IBOutlet weak var lifeButtonsView: UIView!
    @IBOutlet weak var lifeButtonsView2: UIView!
    @IBOutlet weak var buyMoreLivesButton: UIButton!
    @IBOutlet weak var dissmissLivesButton: UIButton!
    @IBOutlet weak var livesInfoTitle: UILabel!
    @IBOutlet weak var livesInfoBox: UIView!
    
    @IBAction func livesDissmisfunc(_ sender: AnyObject) {
        lifePreview.alpha = 0
        UIView.animate(withDuration: 0.3, animations: {
            self.lifeView.alpha = 0
            self.lifeBoxView.alpha = 0
            self.lifeBoxView2.alpha = 0
            self.lifeButtonsView.alpha = 0
            self.lifeButtonsView2.alpha = 0
            self.buyMoreLivesButton.alpha = 0
            self.dissmissLivesButton.alpha = 0
            self.livesInfoBox.alpha = 0
            self.livesInfoTitle.alpha = 0
        })
    }
    
    @IBAction func livesBuyFunc(_ sender: AnyObject) {
        closeInter()
    }
    
    @IBAction func shareFunc(_ sender: AnyObject) {
        let screen = UIScreen.main
        
        if let window = UIApplication.shared.keyWindow {
            UIGraphicsBeginImageContextWithOptions(screen.bounds.size, false, 0);
            window.drawHierarchy(in: window.bounds, afterScreenUpdates: false)
            
            
            let composeSheet = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            let urlPath: String = "https://itunes.apple.com/us/app/reflex-test!-how-far-can-you/id1123340346?ls=1&mt=8"
            let url: URL = URL(string: urlPath)!
            composeSheet?.add(url)
            
            present(composeSheet!, animated: true, completion: nil)
            
            defaults.set(1, forKey: "fb")
            if defaults.integer(forKey: "fbp") == 0 {
                var temp = UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives")
                temp += 3 
                UserDefaults.standard.set(temp, forKey: "com.HBM.Reflex.lives")
                defaults.set(5, forKey: "fbp")
                lifeLbl.text = "\(UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives"))"
            }
        }   
    }
    
    @IBAction func button0Func(_ sender: AnyObject) {
        buttonValue = 0
        passOrNot()
    }
    
    @IBAction func button1Func(_ sender: AnyObject) {
        buttonValue = 1
        passOrNot()
    }
    
    @IBAction func button2Func(_ sender: AnyObject) {
        buttonValue = 2
        passOrNot()
    }
    
    @IBAction func button3Func(_ sender: AnyObject) {
        buttonValue = 3
        passOrNot()
    }
    
    func setButtonVars() {
        let randomnes = Int(arc4random_uniform(UInt32(images.count)))
        nesImage.image = UIImage(named: "\(images[(randomnes)])")
        nesValue = randomnes
        
        images.remove(at: randomnes)
        
        let reqBut = Int(arc4random_uniform(4))
        butNeed = reqBut
        
        switch reqBut {
        case 0: 
            image0.image = nesImage.image
            
            getRandomButtonValue()
            image1.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image2.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image3.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
        case 1: 
            image1.image = nesImage.image
            
            getRandomButtonValue()
            image2.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image0.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image3.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            
        case 2: 
            image2.image = nesImage.image
            
            getRandomButtonValue()
            image0.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image1.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image3.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            
        case 3: 
            image3.image = nesImage.image
            
            getRandomButtonValue()
            image0.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image1.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            getRandomButtonValue()
            image2.image = UIImage(named: "\(images[(randomButtonValue)])")
            images.remove(at: randomButtonValue)
            
            
        default: print("sorry")
        }
        
        
    }
    
    
    func getRandomButtonValue() {
        randomButtonValue = Int(arc4random_uniform(UInt32(images.count)))
    }
    
    func animateCrusher() {
        inter = 1// set to 1
        if first == 0 {
            UIView.animate(withDuration: self.timeVar, delay:0.3, options: UIViewAnimationOptions(), animations: {
                self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height) 
                self.bottomCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height)
            }, completion: {finished in
                self.endGame()
            })
            first = 1
        } else if first == 1 {
            UIView.animate(withDuration: self.timeVar, animations: {
                self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height) 
                self.bottomCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height)
            }, completion: {finished in
                self.endGame()
            })
        }
        
    }
    
    func scoring() {
        
        if score < 15 {
            gamexp += 10
            multiLbl.text = "X 1"
            timeVar = 3
        } else if score < 30 {
            gamexp += 20
            multiLbl.text = "X 2"
            timeVar = 2.75
        } else if score < 45 {
            gamexp += 30
            multiLbl.text = "X 3"
            timeVar = 2.5
        } else if score < 60 {
            gamexp += 40
            multiLbl.text = "X 4"
            timeVar = 2
        } else if score < 75 {
            gamexp += 50
            multiLbl.text = "X 5"
            timeVar = 1.75
        } else if score < 100 {
            gamexp += 60
            multiLbl.text = "X 6"
            timeVar = 1.5
        } else if score < 150 {
            gamexp += 70
            multiLbl.text = "X 7"
            timeVar = 1.25
        } else {
            gamexp += 80
            multiLbl.text = "X 8"
            timeVar = 1.1
        }
        
        scoreLbl.text = "\(score)"
        xpLbl.text = "\(gamexp) XP"
    }
    
    func passOrNot() {
        if buttonValue == butNeed {
            score += 1
            scoring()
            inter = 0
            topCrusherSub.layer.removeAllAnimations()
            bottomCrusherSub.layer.removeAllAnimations()
            if defaults.integer(forKey: "audio") == 1 {
                do {
                    // Preperation
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                } catch _ {
                }
                do {
                    try AVAudioSession.sharedInstance().setActive(true)
                } catch _ {
                }
                
                // Play the sound
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: winsound)
                } catch _{
                }
                
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }
        } else {
            endGameValue = 1
            endGame()
            if defaults.integer(forKey: "audio") == 1 {
                do {
                    // Preperation
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                } catch _ {
                }
                do {
                    try AVAudioSession.sharedInstance().setActive(true)
                } catch _ {
                }
                
                // Play the sound
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: losesound)
                } catch _{
                }
                
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }
        }
    }
    
    func pickRandom() {
        setButtonVars()
        animateCrusher()
    }
    
    func startGame() {
        multiLbl.text = "X 1"
        scoreLbl.text = "0"
        xpLbl.text = "0 XP"
        butNeed = 0
        first = 0
        current = 0
        score = 0
        buttonValue = 0
        endGameValue = 0
        inter = 0
        timeVar = 3
        gamexp = 0
        randomButtonValue = 0
        startSerie()
    }
    
    
    @IBOutlet weak var underBottom: UIView!
    
    
    func startSerie() {
        if first == 1 {
            if modelName == "ipad" || modelName == "pro" || modelName == "6+" || modelName == "3.5" || modelName == "4" {
                let framOfUnder: CGRect = underBottom.frame
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height * 0.10) 
                    self.bottomCrusherSub.frame = CGRect(x: framOfUnder.origin.x, y: framOfUnder.origin.y, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height * 0.10)
                }, completion: {finished in
                })
                
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height * 0.10) 
                    self.bottomCrusherSub.frame = CGRect(x: 0 , y: 135, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height * 0.10)
                }, completion: {finished in
                })
            }
        }
        images = ["0.png", "1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png", "10.png", "11.png", "12.png", "13.png", "14.png", "15.png", "16.png", "17.png", "18.png", "19.png", "20.png", "21.png", "22.png", "23.png", "24.png", "25.png", "26.png", "27.png", "28.png", "29.png", "30.png", "31.png", "32.png", "33.png", "34.png", "35.png", "36.png", "37.png", "38.png", "39.png", "40.png", "41.png", "42.png", "43.png", "44.png", "45.png"]
        butNeed = 0
        nesValue = 21
        current = 0
        endGameValue = 0
        roll = 0
        buttonValue = 0
        inter = 0
        pickRandom()
    }
    
    func endGame() {
        if endGameValue == 0 {
            //continue
            if inter == 1 {
                // end game here
                topCrusherSub.layer.removeAllAnimations()
                bottomCrusherSub.layer.removeAllAnimations()
                if modelName == "ipad" || modelName == "pro" || modelName == "6+" || modelName == "3.5" || modelName == "4" {
                    let framOfUnder: CGRect = underBottom.frame
                    
                    UIView.animate(withDuration: 0.2, animations: {
                        self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height * 0.10) 
                        self.bottomCrusherSub.frame = CGRect(x: framOfUnder.origin.x, y: framOfUnder.origin.y, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height * 0.10)
                    }, completion: {finished in
                    })
                    
                } else {
                    UIView.animate(withDuration: 0.2, animations: {
                        self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height * 0.10) 
                        self.bottomCrusherSub.frame = CGRect(x: 0 , y: 135, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height * 0.10)
                    }, completion: {finished in
                    })
                }
                if defaults.integer(forKey: "audio") == 1 {
                    do {
                        // Preperation
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    } catch _ {
                    }
                    do {
                        try AVAudioSession.sharedInstance().setActive(true)
                    } catch _ {
                    }
                    
                    // Play the sound
                    do {
                        audioPlayer = try AVAudioPlayer(contentsOf: losesound)
                    } catch _{
                    }
                    
                    audioPlayer.prepareToPlay()
                    audioPlayer.play()
                }
                openInter()
            } else if inter == 0 {
                
                startSerie()
                
                // carry on
            }
        } else if endGameValue == 1 {
            topCrusherSub.layer.removeAllAnimations()
            bottomCrusherSub.layer.removeAllAnimations()
            if modelName == "6+" || modelName == "pro" || modelName == "ipad" || modelName == "3.5" || modelName == "4" {
                let framOfUnder: CGRect = underBottom.frame
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height * 0.10) 
                    self.bottomCrusherSub.frame = CGRect(x: framOfUnder.origin.x, y: framOfUnder.origin.y, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height * 0.10)
                }, completion: {finished in
                })
                
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    self.topCrusherSub.frame = CGRect(x: 0 , y: 0, width: self.topCrusherSub.frame.width, height: self.topCrusher.frame.height * 0.10) 
                    self.bottomCrusherSub.frame = CGRect(x: 0 , y: 135, width: self.bottomCrusherSub.frame.width, height: self.bottomCrusher.frame.height * 0.10)
                }, completion: {finished in
                })
            }
            if roll == 0 {
                roll = 1
                openInter()
                
            } 
        }
        
        
    }
    
    func highScore() {
        if score > highscore {
            highscore = score
            defaults.set(score, forKey: "highscore")
        }
        startLevelCurentScoreLbl.text = "\(score)"
        startLevelHighscoreLbl.text = "\(highscore)"
        startFirstLevelLbl.text = "\(highscore)"
        xpBarMove()
    }
    
    @IBAction func goalFunc(_ sender: AnyObject) {
        loadGoals()
        openGoal()
    }
    
    var mainSize:CGFloat = 0
    var xpSize:CGFloat = 0
    var highscore1Size:CGFloat = 0
    var levelSize:CGFloat = 0
    var highscore2Size:CGFloat = 0
    var numberSize:CGFloat = 0
    var livesInfoSize:CGFloat = 0
    var lifeButs:CGFloat = 0
    var settings:CGFloat = 0
    var goalTitle:CGFloat = 0
    var goalText:CGFloat = 0
    var goalNumbers:CGFloat = 0
    var interinfo:CGFloat = 0
    var interTitle:CGFloat = 0
    
    
    func getSize() {
        switch modelName {
        case "3.5":
            mainSize = 45.0
            xpSize = 13
            highscore1Size = 25
            highscore2Size = 22
            levelSize =  17
            numberSize = 20
            livesInfoSize = 20
            lifeButs = 14
            settings = 18
            goalTitle = 40
            goalText = 17
            goalNumbers = 15
            interinfo = 15
            interTitle = 40
        case "4":
            mainSize = 45.0
            xpSize = 14
            highscore1Size = 25
            highscore2Size = 22
            levelSize =  17
            numberSize = 20
            livesInfoSize = 20
            lifeButs = 14
            settings = 22
            goalTitle = 55
            goalText = 17
            goalNumbers = 17
            interinfo = 15
            interTitle = 40
        case "6":
            mainSize = 60
            xpSize = 16
            highscore1Size = 45
            highscore2Size = 25
            levelSize =  26
            numberSize = 28
            livesInfoSize = 25
            lifeButs = 18
            settings = 25
            goalTitle = 65
            goalText = 21
            goalNumbers = 18
            interinfo = 18
            interTitle = 50
        case "6+":
            mainSize = 65
            xpSize = 17
            highscore1Size = 37
            highscore2Size = 27
            levelSize =  25
            numberSize = 25
            livesInfoSize = 32
            lifeButs = 20
            settings = 30
            goalTitle = 85
            goalText = 25
            goalNumbers = 20
            interinfo = 20
            interTitle = 60
        case "ipad":
            mainSize = 95
            xpSize = 17
            highscore1Size = 42
            highscore2Size = 32
            levelSize =  35
            numberSize = 35
            livesInfoSize = 40
            lifeButs = 30
            settings = 45
            goalTitle = 100
            goalText = 40
            goalNumbers = 35
            interinfo = 35
            interTitle = 85
        case "pro":
            mainSize = 130
            xpSize = 17
            highscore1Size = 70
            highscore2Size = 40
            levelSize =  45
            numberSize = 45
            livesInfoSize = 50
            lifeButs = 40
            settings = 55
            goalTitle = 120
            goalText = 50
            goalNumbers = 45
            interinfo = 45
            interTitle = 115
        default:
            mainSize = 0
            xpSize = 0
            highscore1Size = 0
            highscore2Size = 0
            levelSize =  0
            numberSize = 0
            livesInfoSize = 0
            lifeButs = 20
            settings = 15
            goalTitle = 15
            goalText = 15
            goalNumbers = 15
            interinfo = 15
            interTitle = 15
        }
    }
    
    func setSize() {
        startTitle.font = startTitle.font.withSize(mainSize)
        lvlLbl.font = lvlLbl.font.withSize(levelSize)
        startFirstLevelTitle.font = startFirstLevelTitle.font.withSize(highscore1Size)
        startFirstLevelLbl.font = startFirstLevelLbl.font.withSize(numberSize)
        startlevelHighscoreTitle.font = startLevelHighscoreLbl.font.withSize(highscore2Size)
        startLevelCurrentScoreTItle.font = startLevelCurrentScoreTItle.font.withSize(highscore2Size)
        startLevelHighscoreLbl.font = startLevelHighscoreLbl.font.withSize(numberSize)
        startLevelCurentScoreLbl.font = startLevelCurentScoreLbl.font.withSize(numberSize)
        xpLbl.font = xpLbl.font.withSize(xpSize)
        livesInfoTitle.font = livesInfoTitle.font.withSize(livesInfoSize)
        dissmissLivesButton.titleLabel!.font =  UIFont(name: "Helvetica", size: lifeButs)
        buyMoreLivesButton.titleLabel!.font =  UIFont(name: "Helvetica", size: lifeButs)
        settingstitle.font = settingstitle.font.withSize(settings)
        soundLblreal.font = soundLblreal.font.withSize(settings)
        goPremiumButton.titleLabel!.font =  UIFont(name: "Helvetica", size: settings)
        settingsreturnButton.titleLabel!.font =  UIFont(name: "Helvetica", size: settings)
        goalTitleLbl.font = goalTitleLbl.font.withSize(goalTitle)
        goalFbTitle.font = goalFbTitle.font.withSize(goalText)
        goalLvlTitle.font = goalLvlTitle.font.withSize(goalText)
        goalHighScoreTItle.font = goalHighScoreTItle.font.withSize(goalText)
        goalRetrunButton.titleLabel!.font =  UIFont(name: "Helvetica", size: goalText)
        goalFblifeAmountLbl.font = goalFblifeAmountLbl.font.withSize(goalNumbers)
        goalLvlAmount.font = goalLvlAmount.font.withSize(goalNumbers)
        goalLvlHeartAmount.font = goalLvlHeartAmount.font.withSize(goalNumbers)
        goalHighScoreHeartAmount.font = goalHighScoreHeartAmount.font.withSize(goalNumbers)
        goalHighscoreLbl.font = goalHighscoreLbl.font.withSize(goalNumbers)
        interTitleLbl.font = interTitleLbl.font.withSize(interTitle)
        interXpLbl.font = interXpLbl.font.withSize(interinfo)
        interMultiLbl.font = interMultiLbl.font.withSize(interinfo)
        interScoreLbl.font = interScoreLbl.font.withSize(interinfo)
        intercontinue.font = intercontinue.font.withSize(interinfo)
        quitLbl.font = quitLbl.font.withSize(interinfo)
        lifeLbl.font = lifeLbl.font.withSize(goalNumbers)
        gamecenterButton.titleLabel!.font =  UIFont(name: "Helvetica", size: goalText-3)
        
    }
    
    
    @IBOutlet weak var gameinfo1: UIView!
    @IBOutlet weak var gameinfo3: UIView!
    @IBOutlet weak var gameinfo2: UIView!
    
    func setRound() {
        view1subview.layer.cornerRadius = 10
        view2Subview.layer.cornerRadius = 10
        view3Subview.layer.cornerRadius = 10
        view4Subview.layer.cornerRadius = 10
        goPremiumButton.layer.cornerRadius = 10
        settingsreturnButton.layer.cornerRadius = 10
        xpBar.layer.cornerRadius = 10
        xpBar.clipsToBounds = true
        startSettingsImage.layer.cornerRadius = 10
        startPlayImage.layer.cornerRadius = 10
        startLifeImage.layer.cornerRadius = 10
        startShareImage.layer.cornerRadius = 10
        interBox.layer.cornerRadius = 10
        info1round.layer.cornerRadius = 10
        info2Round.layer.cornerRadius = 10
        info3Round.layer.cornerRadius = 10
        interRound1.layer.cornerRadius = 10
        interRound2.layer.cornerRadius = 10
        gameinfo1.layer.cornerRadius = 15
        gameinfo2.layer.cornerRadius = 15
        gameinfo3.layer.cornerRadius = 15
        multiLbl.layer.cornerRadius = 15
        scoreLbl.layer.cornerRadius = 15
        xpLbl.layer.cornerRadius = 15
        multiLbl.clipsToBounds = true
        xpLbl.clipsToBounds = true
        scoreLbl.clipsToBounds = true
        buttonView.layer.cornerRadius = 10
        lifeBoxView.layer.cornerRadius = 10
        lifeBoxView2.layer.cornerRadius = 10
        lifeButtonsView2.layer.cornerRadius = 10
        buyMoreLivesButton.layer.cornerRadius = 10
        dissmissLivesButton.layer.cornerRadius = 10
        buyMoreLivesButton.clipsToBounds = true
        dissmissLivesButton.clipsToBounds = true
        lifeButtonsView.layer.cornerRadius = 10
        livesInfoBox.layer.cornerRadius = 10
        goalTitleView.layer.cornerRadius = 10
        goalFbView.layer.cornerRadius = 10
        goalFbView2.layer.cornerRadius = 10
        goalLvlView.layer.cornerRadius = 10
        goalLvlView2.layer.cornerRadius = 10
        goal4View2.layer.cornerRadius = 10
        goal4view3.layer.cornerRadius = 10
        goal5view2.layer.cornerRadius = 10
        goal5view3.layer.cornerRadius = 10
        goalLvlProgBar.layer.cornerRadius = 10
        goalLvlProgBar.clipsToBounds = true
        goalLvlProgView.layer.cornerRadius = 10
        goalHighScoreProgBar.layer.cornerRadius = 10
        goalHighScoreProgBar.clipsToBounds = true
        gamecenterview.layer.cornerRadius = 10
        gamecenterview2.layer.cornerRadius = 10
        gamecenterButton.layer.cornerRadius = 10
        gamecenterButton.clipsToBounds = true
    }
    
    //goals asstes
    
    @IBOutlet weak var goalsView: UIView!
    @IBOutlet weak var goal1: UIView!
    @IBOutlet weak var goal2: UIView!
    @IBOutlet weak var goal3: UIView!
    @IBOutlet weak var goal4: UIView!
    @IBOutlet weak var goal5: UIView!
    @IBOutlet weak var goalFbView: UIView!
    @IBOutlet weak var goalFbView2: UIView!
    @IBOutlet weak var goalFbImage: UIImageView!
    @IBOutlet weak var goalFbHeart: UIImageView!
    @IBOutlet weak var goalFblifeAmountLbl: UILabel!
    @IBOutlet weak var goalFbTitle: UILabel!
    @IBOutlet weak var goalTitleView: UIView!
    @IBOutlet weak var goalTitleView2: UIView!
    @IBOutlet weak var goalTitleLbl: UILabel!
    @IBOutlet weak var goalLvlView: UIView!
    @IBOutlet weak var goalLvlView2: UIView!
    @IBOutlet weak var goalLvlAmount: UILabel!
    @IBOutlet weak var goalLvlTitle: UILabel!
    @IBOutlet weak var goalLvlHeart: UIImageView!
    @IBOutlet weak var goalLvlHeartAmount: UILabel!
    @IBOutlet weak var goal4View2: UIView!
    @IBOutlet weak var goal4view3: UIView!
    @IBOutlet weak var goal5view2: UIView!
    @IBOutlet weak var goal5view3: UIView!
    @IBOutlet weak var goalRetrunButton: UIButton!
    @IBOutlet weak var goalLvlProgBar: UIProgressView!
    @IBOutlet weak var goalLvlProgView: UIView!
    @IBOutlet weak var goalHighscoreLbl: UILabel!
    @IBOutlet weak var goalHighScoreTItle: UILabel!
    @IBOutlet weak var goalHihgscoreHeart: UIImageView!
    @IBOutlet weak var goalHighScoreHeartAmount: UILabel!
    @IBOutlet weak var goalHighscoreProgView: UIView!
    @IBOutlet weak var goalHighScoreProgBar: UIProgressView!
    @IBOutlet weak var gamecenterview: UIView!
    @IBOutlet weak var gamecenterview2: UIView!
    @IBOutlet weak var gamecenterButton: UIButton!
    
    func openGoal() {
        UIView.animate(withDuration: 0.3, animations: {
            self.goalsView.alpha = 1
            self.goal1.alpha = 1
            self.goal2.alpha = 1
            self.self.goal3.alpha = 1
            self.goal4.alpha = 1
            self.goal5.alpha = 1
            self.goalFbView.alpha = 1
            self.goalFbView2.alpha = 1
            self.goalFbImage.alpha = 1
            self.goalFbHeart.alpha = 1
            self.goalFblifeAmountLbl.alpha = 1
            self.goalFbTitle.alpha = 1
            self.goalTitleView.alpha = 1
            self.goalTitleView2.alpha = 1
            self.goalTitleLbl.alpha = 1
            self.goalLvlView.alpha = 1
            self.goalLvlView2.alpha = 1
            self.goalLvlAmount.alpha = 1
            self.goalLvlTitle.alpha = 1
            self.goalLvlHeart.alpha = 1
            self.goalLvlHeartAmount.alpha = 1
            self.goal4View2.alpha = 1
            self.goal4view3.alpha = 1
            self.goal5view2.alpha = 1
            self.goal5view3.alpha = 1
            self.goalRetrunButton.alpha = 1
            self.goalLvlProgBar.alpha = 1
            self.goalLvlProgView.alpha = 1
            self.goalHighscoreLbl.alpha = 1
            self.goalHighScoreTItle.alpha = 1
            self.goalHighScoreHeartAmount.alpha = 1
            self.goalHihgscoreHeart.alpha = 1
            self.goalHighScoreProgBar.alpha = 1
            self.goalHighscoreProgView.alpha = 1
            self.gamecenterview.alpha = 1
            self.gamecenterview2.alpha = 1
            self.gamecenterButton.alpha = 1
        })
    }
    
    func closeGoal() {
        UIView.animate(withDuration: 0.3, animations: {
            self.goalsView.alpha = 0
            self.goal1.alpha = 0
            self.goal2.alpha = 0
            self.self.goal3.alpha = 0
            self.goal4.alpha = 0
            self.goal5.alpha = 0
            self.goalFbView.alpha = 0
            self.goalFbView2.alpha = 0
            self.goalFbImage.alpha = 0
            self.goalFbHeart.alpha = 0
            self.goalFblifeAmountLbl.alpha = 0
            self.goalFbTitle.alpha = 0
            self.goalTitleView.alpha = 0
            self.goalTitleView2.alpha = 0
            self.goalTitleLbl.alpha = 0
            self.goalLvlView.alpha = 0
            self.goalLvlView2.alpha = 0
            self.goalLvlAmount.alpha = 0
            self.goalLvlTitle.alpha = 0
            self.goalLvlHeart.alpha = 0
            self.goalLvlHeartAmount.alpha = 0
            self.goal4View2.alpha = 0
            self.goal4view3.alpha = 0
            self.goal5view2.alpha = 0
            self.goal5view3.alpha = 0
            self.goalRetrunButton.alpha = 0
            self.goalLvlProgBar.alpha = 0
            self.goalLvlProgView.alpha = 0
            self.goalHighscoreLbl.alpha = 0
            self.goalHighScoreTItle.alpha = 0
            self.goalHighScoreHeartAmount.alpha = 0
            self.goalHihgscoreHeart.alpha = 0
            self.goalHighScoreProgBar.alpha = 0
            self.goalHighscoreProgView.alpha = 0      
            self.gamecenterview.alpha = 0
            self.gamecenterview2.alpha = 0
            self.gamecenterButton.alpha = 0
        })
    }
    
    
    @IBAction func gameCenterSummon(_ sender: AnyObject) {
        saveHighscore()
        showLeaderBoard()
    }
    
    
    var levelInc = 0
    var levelRew = 0
    var HSInc = 0
    var HSRew = 0
    
    func loadGoals() {
        var barValue:Float = 0
        
        if defaults.integer(forKey: "levelInc") == 0  {
            levelInc = 1
            levelRew = 0
            defaults.set(levelInc, forKey: "levelInc")
            defaults.set(levelRew, forKey: "levelRew")
        }
        
        
        
        if defaults.integer(forKey: "HSInc") == 0 {
            HSInc = 50 
            HSRew = 1
            defaults.set(HSInc, forKey: "HSInc")
            defaults.set(HSRew, forKey: "HSRew")
        }
        
        if highscore > HSInc {
            var temp = UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives")
            temp += HSRew 
            UserDefaults.standard.set(temp, forKey: "com.HBM.Reflex.lives")
            HSInc += 50
            HSRew += 1
            defaults.set(HSInc, forKey: "HSInc")
            defaults.set(HSRew, forKey: "HSRew")
            lifeLbl.text = "\(UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives"))"
        }
        
        goalLvlAmount.text = "\(level)\nLVL"
        goalLvlHeartAmount.text = "\(levelInc)"
        goalHighScoreHeartAmount.text = "\(HSRew)"
        goalHighscoreLbl.text = "\(highscore)"
        goalLvlTitle.text = "REACH LEVEL \(levelRew + 10)"
        goalHighScoreTItle.text = "PASS \(HSInc) POINTS"
        
        barValue = Float((Float(level) - Float(levelRew)) / Float(10))
        
        
        UIView.animate(withDuration: 3, animations: { () -> Void in
            self.goalLvlProgBar.setProgress(barValue, animated: true)
        })
        
        barValue = Float((Float(highscore) / Float(HSInc)))
        
        UIView.animate(withDuration: 3, animations: { () -> Void in
            self.goalHighScoreProgBar.setProgress(barValue, animated: true)
        })
        
        if defaults.integer(forKey: "fb") == 0 {
            
        } else if defaults.integer(forKey: "fb") == 1 {
            goalFbHeart.image = UIImage(named: "check")
            goalFblifeAmountLbl.text = ""
        }
        
    }
    
    @IBAction func goalReturn(_ sender: AnyObject) {
        closeGoal()
    }
    
    
    //goals end
    
    
    func getGradient() {
        let topColor = UIColor(red: 81/255, green: 164/255, blue: 255/255, alpha: 1)
        let bottomColor = UIColor(red: 68/255, green: 50/255, blue: 100/255, alpha: 1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        gradientLayer.frame = backgroudView.bounds
        startView.layer.insertSublayer(gradientLayer, at: 0)
        
        let gradientLayer1: CAGradientLayer = CAGradientLayer()
        gradientLayer1.colors = gradientColors
        gradientLayer1.locations = gradientLocations as [NSNumber]?
        
        gradientLayer1.frame = backgroudView.bounds
        settingsView.layer.insertSublayer(gradientLayer1, at: 0)
        
        let gradientLayer2: CAGradientLayer = CAGradientLayer()
        gradientLayer2.colors = gradientColors
        gradientLayer2.locations = gradientLocations as [NSNumber]?
        
        gradientLayer2.frame = backgroudView.bounds
        interView.layer.insertSublayer(gradientLayer2, at: 0)
        
        let gradientLayer3: CAGradientLayer = CAGradientLayer()
        gradientLayer3.colors = gradientColors
        gradientLayer3.locations = gradientLocations as [NSNumber]?
        
        gradientLayer3.frame = backgroudView.bounds
        backgroudView.layer.insertSublayer(gradientLayer3, at: 0)
        
        let gradientLayer4: CAGradientLayer = CAGradientLayer()
        gradientLayer4.colors = gradientColors
        gradientLayer4.locations = gradientLocations as [NSNumber]?
        
        gradientLayer4.frame = backgroudView.bounds
        lifeView.layer.insertSublayer(gradientLayer4, at: 0)
        
        let gradientLayer5: CAGradientLayer = CAGradientLayer()
        gradientLayer5.colors = gradientColors
        gradientLayer5.locations = gradientLocations as [NSNumber]?
        
        gradientLayer5.frame = backgroudView.bounds
        lifePreview.layer.insertSublayer(gradientLayer5, at: 0)
        
        let gradientLayer6: CAGradientLayer = CAGradientLayer()
        gradientLayer6.colors = gradientColors
        gradientLayer6.locations = gradientLocations as [NSNumber]?
        
        gradientLayer6.frame = backgroudView.bounds
        goalsView.layer.insertSublayer(gradientLayer6, at: 0)
    }
    
    func authPlayer(){
        let localPlayer = GKLocalPlayer.localPlayer()
        
        localPlayer.authenticateHandler = {
            (view, error) in
            if view != nil {
                self.present(view!, animated: true, completion: nil)
            }
            else {
                print(GKLocalPlayer.localPlayer().isAuthenticated)
            }
        }
    }
    
    
    func saveHighscore(){
        
        if GKLocalPlayer.localPlayer().isAuthenticated {
            
            let scoreReporter = GKScore(leaderboardIdentifier: "highscore")
            
            scoreReporter.value = Int64(defaults.integer(forKey: "highscore"))
            
            let scoreArray : [GKScore] = [scoreReporter]
            
            GKScore.report(scoreArray, withCompletionHandler: nil)
            
            let scoreReporter1 = GKScore(leaderboardIdentifier: "level")
            
            scoreReporter1.value = Int64(defaults.integer(forKey: "level"))
            
            let scoreArray1 : [GKScore] = [scoreReporter1]
            
            GKScore.report(scoreArray1, withCompletionHandler: nil)
            
        }
    }
    
    
    func showLeaderBoard(){
        let viewController = self.view.window?.rootViewController
        let gcvc = GKGameCenterViewController()
        gcvc.gameCenterDelegate = self
        viewController?.present(gcvc, animated: true, completion: nil)
    }
    
    
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
        gameCenterViewController.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLog()
        setData()
        setLvl()
        xpCalc()
        audioData()
        modelName = UIDevice.current.modelName // When using simulator manually add the device
        getSize()
        setSize()
        setRound()
        getGradient()
        authPlayer()
    }
    override func viewDidAppear(_ animated: Bool) {
        xpBarMove()
    }
    
    //startmenucode
    @IBOutlet weak var xpBar: UIProgressView!
    @IBOutlet weak var lvlLbl: UILabel!
    
    func setLvl() {
        if level == 0 {
            level = 1
            defaults.set(level, forKey: "level")
        } 
        lvlLbl.text = "LVL \(level)"
        
    }
    
    func setData() {
        xp = (defaults.integer(forKey: "xp") as Int?)!
        score = (defaults.integer(forKey: "score") as Int?)!
        level = (defaults.integer(forKey: "level") as Int?)!
        highscore = (defaults.integer(forKey: "highscore") as Int?)!
        levelInc = (defaults.integer(forKey: "levelInc") as Int?)!
        levelRew = (defaults.integer(forKey: "levelRew") as Int?)!
        HSInc = (defaults.integer(forKey: "HSInc") as Int?)!
        HSRew = (defaults.integer(forKey: "HSRew") as Int?)!
        lifeLbl.text = "\(UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives"))"
        startFirstLevelLbl.text = "\(highscore)"
        if level == 1 {
            levelInter = 1
            defaults.set(levelInter, forKey: "levelInter")
        }
        levelInter = defaults.integer(forKey: "levelInter")
    }
    
    var interLevel = 0
    
    
    func xpCalc() {
        
        while xp > 2500 {
            interLevel += 1
            xp -= 2500
            levelInter += 1
            defaults.set(levelInter, forKey: "levelInter")
            if levelInter >= 10 {
                levelInter = 0
                defaults.set(levelInter, forKey: "levelInter")
                var temp = UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives")
                temp += levelInc 
                UserDefaults.standard.set(temp, forKey: "com.HBM.Reflex.lives")
                levelRew += 10
                levelInc += 1
                defaults.set(levelInc, forKey: "levelInc")
                defaults.set(levelRew, forKey: "levelRew")
                lifeLbl.text = "\(UserDefaults.standard.integer(forKey: "com.HBM.Reflex.lives"))"
            }
            loadGoals()
        }
        
        if interLevel != 0 {
            level += interLevel
            lvlLbl.text = "LVL \(level)"
            interLevel = 0
        }
        
        defaults.set(xp, forKey: "xp")
        defaults.set(level, forKey: "level")
        
        barvalue = Float((Float(xp) / Float(2500)))
        loadGoals()
    }
    
    func xpBarMove() {
        UIView.animate(withDuration: 3, animations: { () -> Void in
            self.xpBar.setProgress(self.barvalue, animated: true)
        })
    }
    
    var firstLogVal = 0
    
    func firstLog() {
        if firstLogVal == 0 {
            firstLogVal = 1
            
            startFirstLevelLbl.alpha = 1
            startFirstLevelmage.alpha = 1
            startFirstLevelTitle.alpha = 1
            
            startlevelHighscoreTitle.alpha = 0
            startLevelHighscoreLbl.alpha = 0
            startLevelCurentScoreLbl.alpha = 0
            startLevelCurrentScoreTItle.alpha = 0
            StartLevelCurrentScoreImage.alpha = 0
            startLevelhighscoreimage.alpha = 0
        } else {
            
            startFirstLevelLbl.alpha = 0
            startFirstLevelmage.alpha = 0
            startFirstLevelTitle.alpha = 0
            
            startlevelHighscoreTitle.alpha = 1
            startLevelHighscoreLbl.alpha = 1
            startLevelCurentScoreLbl.alpha = 1
            startLevelCurrentScoreTItle.alpha = 1
            StartLevelCurrentScoreImage.alpha = 1
            startLevelhighscoreimage.alpha = 1
            
        }
    }
    
}

public extension UIDevice {
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 , value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1", "iPod7,1", "iPod4,1", "iPhone3,1", "iPhone3,2", "iPhone3,3", "iPhone4,1":             
            return "3.5"
        case "iPhone5,1", "iPhone5,2", "iPhone5,3", "iPhone5,4", "iPhone6,1", "iPhone6,2", "iPhone8,4":       
            return "4"
        case "iPhone7,2", "iPhone8,1", "iPhone9,1", "iPhone9,3": 
            return "6"
        case "iPhone7,1", "iPhone8,2", "iPad2,5", "iPad2,6", "iPad2,7", "iPhone9,2", "iPhone9,4":                              
            return "6+"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4","iPad3,1", "iPad3,2", "iPad3,3","iPad3,4", "iPad3,5", "iPad3,6","iPad4,1", "iPad4,2", "iPad4,3","iPad5,3", "iPad5,4","iPad4,4", "iPad4,5", "iPad4,6", "iPad4,7", "iPad4,8", "iPad4,9", "iPad5,1", "iPad5,2":    
            return "ipad"
        case "iPad6,3", "iPad6,4", "iPad6,7", "iPad6,8":return 
            "pro"
        default:                                        return identifier
        }
    }
}
