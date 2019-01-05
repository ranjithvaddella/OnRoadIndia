//
//  ViewController.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/8/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit
import GoogleMobileAds
import AudioToolbox


class ViewController: UIViewController, GADBannerViewDelegate, GADInterstitialDelegate {
    
    //variable for intersitial
    var interstitial: GADInterstitial!
    var onRoadIndia = "On Road India"
    
    //Creating the Banner view for the add and assigning the app ID
    var adMobBannerView = GADBannerView()
    let ADMOB_BANNER_UNIT_ID = "ca-app-pub-2692912423432575/4656666248"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = onRoadIndia
        // Init AdMob banner
        initAdMobBanner()
        
        //Loading Interstitial ad
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-2692912423432575/9205792059")
        let request = GADRequest()
        interstitial.load(request)
       
        //Showing the interstitial ad
       
        //Interstitial Delegate to Reload
        interstitial = createAndLoadInterstitial()
       
    }
    
    var adCount = 1
    
    @IBAction func TrafficFine(_ sender: UIButton) {
        if adCount == 3 {
            interstitial.delegate = self
            if interstitial.isReady {
                interstitial.present(fromRootViewController: self)
            } else {
                print("Ad wasn't ready")
            }
            adCount = 1
        } else {
            adCount = adCount + 1
        }
        
        
    }
    
    @IBAction func RoadSigns(_ sender: UIButton) {
        if adCount == 3 {
            interstitial.delegate = self
            if interstitial.isReady {
                interstitial.present(fromRootViewController: self)
            } else {
                print("Ad wasn't ready")
            }
            adCount = 1
        } else {
            adCount = adCount + 1
        }
    }
    
  
    
    func initAdMobBanner() {
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            // iPhone
            adMobBannerView.adSize =  GADAdSizeFromCGSize(CGSize(width: 320, height: 50))
            adMobBannerView.frame = CGRect(x: 0, y: view.frame.size.height, width: 320, height: 50)
        } else  {
            // iPad
            adMobBannerView.adSize =  GADAdSizeFromCGSize(CGSize(width: 468, height: 60))
            adMobBannerView.frame = CGRect(x: 0, y: view.frame.size.height, width: 468, height: 60)
        }
        
        adMobBannerView.adUnitID = ADMOB_BANNER_UNIT_ID
        adMobBannerView.rootViewController = self
        adMobBannerView.delegate = self
        view.addSubview(adMobBannerView)
        
        let request = GADRequest()
        adMobBannerView.load(request)
    }
    
    
    // Hide the banner
    func hideBanner(_ banner: UIView) {
        UIView.beginAnimations("hideBanner", context: nil)
        banner.frame = CGRect(x: view.frame.size.width/2 - banner.frame.size.width/2, y: view.frame.size.height - banner.frame.size.height, width: banner.frame.size.width, height: banner.frame.size.height)
        UIView.commitAnimations()
        banner.isHidden = true
    }
    
    // Show the banner
    func showBanner(_ banner: UIView) {
        UIView.beginAnimations("showBanner", context: nil)
        banner.frame = CGRect(x: view.frame.size.width/2 - banner.frame.size.width/2, y: view.frame.size.height - banner.frame.size.height, width: banner.frame.size.width, height: banner.frame.size.height)
        UIView.commitAnimations()
        banner.isHidden = false
    }
    
    // AdMob banner available
    func adViewDidReceiveAd(_ view: GADBannerView) {
        showBanner(adMobBannerView)
    }
    
    // NO AdMob banner available
    func adView(_ view: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        hideBanner(adMobBannerView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Interstitial ad delegate
    
    func createAndLoadInterstitial() -> GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-2692912423432575/9205792059")
        interstitial.delegate = self
        interstitial.load(GADRequest()) 
        return interstitial
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        interstitial = createAndLoadInterstitial()
    }
    
    
    
   /* @IBAction func RoadSense(_ sender: AnyObject) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let dest = segue.destination as? RoadSense {
                dest.navigationController?.title = "Road Sense"
            }
        }
    } */
    

}

