//
//  ViewController.swift
//  MultiLang
//
//  Created by Rakesh Kumar Sharma on 28/12/17.
//  Copyright © 2017 Rakesh Kumar Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblheader: UILabel!
    
    @IBOutlet weak var lblbotton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblheader.text = NSLocalizedString("txtwelcome", comment: "local text")
        //chooselang()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        chooselang()
    }
    
    func chooselang()  {
        
        let alert = UIAlertController(title: "",
                                      message: "",
                                      preferredStyle: .alert)
        //string: "Multiple buttons", attributes: titleFont
        // Change font of the title and message
        let titleFont:[NSAttributedStringKey : AnyObject] = [ NSAttributedStringKey(rawValue: NSAttributedStringKey.font.rawValue) : UIFont(name: "AmericanTypewriter", size: 18)! ]
        
       // let messageFont:[NSAttributedStringKey : AnyObject] = [ NSAttributedStringKey(rawValue: NSAttributedStringKey.font.rawValue) : UIFont(name: "HelveticaNeue-Thin", size: 14)! ]
        let title = AppDelegate.appDelegateObject().localLanguage(key: "langtitle", comment: "")
        let attributedTitle = NSMutableAttributedString(string: title, attributes: titleFont)
        //let attributedMessage = NSMutableAttributedString(string: "Select an Action", attributes: messageFont)
         alert.setValue(attributedTitle, forKey: "attributedTitle")
       // alert.setValue(attributedMessage, forKey: "attributedMessage")
        
        let english = UIAlertAction(title: AppDelegate.appDelegateObject().localLanguage(key: "langenglish", comment: ""), style: .default, handler: { (action) -> Void in
            AppDelegate.appDelegateObject().applicationLanguage = "en"
            self.actionChangeLanguage()
        })
        
        let french = UIAlertAction(title: AppDelegate.appDelegateObject().localLanguage(key: "langfrench", comment: ""), style: .default, handler: { (action) -> Void in
            AppDelegate.appDelegateObject().applicationLanguage = "fr-PT"
            self.actionChangeLanguage()
        })
        
        let portugal = UIAlertAction(title: AppDelegate.appDelegateObject().localLanguage(key: "langportugal", comment: ""), style: .default, handler: { (action) -> Void in
            AppDelegate.appDelegateObject().applicationLanguage = "pt-PT"
            self.actionChangeLanguage()
        })
        
        alert.view.tintColor = UIColor.brown  // change text color of the buttons
        alert.view.backgroundColor = UIColor.cyan  // change background color
        alert.view.layer.cornerRadius = 25   //
        
        alert.addAction(english)
        alert.addAction(french)
        alert.addAction(portugal)
        present(alert, animated: true, completion: nil)
    }
    
    
    func actionChangeLanguage(){
        
        
        self.lblheader.text = NSLocalizedString("txtwelcome", tableName: nil, bundle: AppDelegate.appDelegateObject().getpath() , value: "", comment: "")
        
        
    }


}

