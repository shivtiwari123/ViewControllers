//
//  donationImage.swift
//  ViewControllers
//
//  Created by user1 on 13/03/24.
//

import UIKit

class donationImage: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //@IBOutlet weak var donationBanner: UIImageView!
    
    @IBOutlet weak var donationBanner: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tapgesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        donationBanner.isUserInteractionEnabled = true
        donationBanner.addGestureRecognizer(tap)
//        funraiserBanner?.isUserInteractionEnabled = true
//        funraiserBanner?.addGestureRecognizer(tap)
    }
    
    @objc func imageTapped() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension donationImage {
    func imagePickerController1(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        donationBanner.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
//    func imagePickerController2(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        funraiserBanner?.image = info[.originalImage] as? UIImage
//        dismiss(animated: true, completion: nil)
//    }
}
