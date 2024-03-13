//
//  ViewController.swift
//  ViewControllers
//
//  Created by user1 on 08/03/24.
//

import UIKit
import MapKit
import SwiftUI
import Combine

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MKMapViewDelegate{

    
    var selectedLocation : CLLocationCoordinate2D?
    
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var eventBanner: UIImageView!
    
//    @IBOutlet weak var funraiserBanner: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //eventBanner.layer.cornerRadius = 10
        tapgesture()
    }
    
    @IBAction func chooseLocTapped(_ sender: UIButton) {
        //let mapViewController = MapViewControlle
    }
    
    func tapgesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        eventBanner.isUserInteractionEnabled = true
        eventBanner.addGestureRecognizer(tap)
//        funraiserBanner?.isUserInteractionEnabled = true
//        funraiserBanner?.addGestureRecognizer(tap)
    }
    
    @objc func imageTapped() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
}

extension ViewController {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        eventBanner.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
//    func imagePickerController2(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        funraiserBanner?.image = info[.originalImage] as? UIImage
//        dismiss(animated: true, completion: nil)
//    }
}


@IBDesignable
class DesignableView: UIView {
}

@IBDesignable
class DesignableButton: UIButton {
}

@IBDesignable
class DesignableLabel: UILabel {
}

@IBDesignable
class DesignableTextView: UITextView{
    
}

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
// START THE CODE

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
}


