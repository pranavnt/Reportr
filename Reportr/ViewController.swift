//
//  ViewController.swift
//  Reportr
//
//  Created by Pranav Teegavarapu on 6/6/20.
//  Copyright © 2020 Pranav Teegavarapu. All rights reserved.
//

public var VideoData: Data?;

import UIKit
import MobileCoreServices
import MessageUI


class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    var controller = UIImagePickerController()
    let videoFileName = "/video.mp4"
    
    @IBAction func takeVideo(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            
            controller.sourceType = .camera
            controller.mediaTypes = [kUTTypeMovie as String]
            controller.delegate = self
            
            present(controller, animated: true, completion: nil)
        }
        else {
            print("Camera is not available")
        }
    }
    
    @IBAction func viewLibrary(_ sender: Any) {
        controller.sourceType = UIImagePickerController.SourceType.photoLibrary
        controller.mediaTypes = [kUTTypeMovie as String]
        controller.delegate = self
        
        present(controller, animated: true, completion: nil)
    }
    
    func showMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            print(1)
            //Show alert informing the user
            return
        }
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["RepDelBene@mail.house.gov",])
        composer.setSubject("Reporting Police Brutality")
        composer.addAttachmentData(VideoData!, mimeType: ".mp4", fileName: "./video.mp4")
        composer.setMessageBody(message, isHTML: false)
        
        present(composer, animated: true)
    }
    
    
    @IBAction func sendMail(_ sender: UIButton) {
        showMailComposer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedVideo:URL = (info[UIImagePickerController.InfoKey.mediaURL] as? URL) {
            let selectorToCall = #selector(ViewController.videoSaved(_:didFinishSavingWithError:context:))
            UISaveVideoAtPathToSavedPhotosAlbum(selectedVideo.relativePath, self, selectorToCall, nil)
            
            let videoData = try? Data(contentsOf: selectedVideo)
            print("test")
            VideoData = videoData
            let paths = NSSearchPathForDirectoriesInDomains(
                FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
            let documentsDirectory: URL = URL(fileURLWithPath: paths[0])
            let dataPath = documentsDirectory.appendingPathComponent(videoFileName)
            try! videoData?.write(to: dataPath, options: [])
        }
        picker.dismiss(animated: true)
    }
    
    @objc func videoSaved(_ video: String, didFinishSavingWithError error: NSError!, context: UnsafeMutableRawPointer){
        if let theError = error {
            print("error saving the video = \(theError)")
        } else {
            DispatchQueue.main.async(execute: { () -> Void in
            })
        }
    }
}

extension ViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        @unknown default:
            break
        }
        
        controller.dismiss(animated: true)
    }
}
