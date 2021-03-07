//
//  AddImage.swift
//  Trekr2.0 (iOS)
//
//  Created by Li, Muchen on 2021/3/4.
//

import Foundation
import UIKit

//class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
//
//    @IBOutlet var imageView: UIImageView!
//    @IBOutlet var chooseBuuton: UIButton!
//    var imagePicker = UIImagePickerController()
//
//    @IBAction func btnClicked() {
//
//        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
//            print("Button capture")
//
//            imagePicker.delegate = self
//            imagePicker.sourceType = .savedPhotosAlbum
//            imagePicker.allowsEditing = false
//
//            present(imagePicker, animated: true, completion: nil)
//        }
//    }
//
//    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
//        self.dismiss(animated: true, completion: { () -> Void in
//
//        })
//
//        imageView.image = image
//    }
////}
//
//func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//    var newImage: UIImage
//
//    if let possibleImage = info[.editedImage] as? UIImage {
//        newImage = possibleImage
//    } else if let possibleImage = info[.originalImage] as? UIImage {
//        newImage = possibleImage
//    } else {
//        return
//    }
//
//    // do something interesting here!
//    print(newImage.size)
//
//    dismiss(animated: true)
//}
