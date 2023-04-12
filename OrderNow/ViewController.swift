//
//  ViewController.swift
//  OrderNow
//
//  Created by Apple on 22/11/22.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var numberUITextField: UITextField!
    @IBOutlet weak var number2UITextField: UITextField!
    @IBOutlet weak var imageUIImageView: UIImageView!
    @IBOutlet weak var image2UIImageView: UIImageView!
    @IBOutlet weak var labelUILabel: UILabel!
    @IBOutlet weak var label2UILabel: UILabel!
    @IBOutlet weak var additionUILabel: UILabel!
    
    let foodItemOrderNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let foodItemList = ["Pani Puri","Aloo Tikki", "Kathi Roll", "Pav Bhaji", "Vada Pav", "Chole Bhature", "Biryani", "Paratha","Palak Paneer", "Gulab Jamun"]
    let priceList = [20, 30, 40, 60, 20, 100, 200, 65, 190, 40]
    let foodItemImageList = ["panipuri","tikki", "roll", "pavbhaji", "vadapav", "bhature", "biryani", "paratha","palakpaneer", "gulabjamun"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func orderActionButtom(_ sender: Any) {

        let inputNumber1 = Int(numberUITextField.text!)!
        let inputNumber2 = Int(number2UITextField.text!)!
        
        let orderNumber1 = foodItemList[inputNumber1 - 1]
        let list1 = priceList[inputNumber1 - 1]
        let ImageList1 = foodItemImageList[inputNumber1 - 1]
        let foodItem1 = foodItemList[inputNumber1 - 1]
        let price1 = priceList[inputNumber1 - 1]
        
        let orderNumber2 = foodItemList[inputNumber2 - 1]
        let list2 = priceList[inputNumber2 - 1]
        let ImageList2 = foodItemImageList[inputNumber2 - 1]
        let foodItem2 = foodItemList[inputNumber2 - 1]
        let price2 = priceList[inputNumber2 - 1]
        
        let addition = price1 + price2
                
        imageUIImageView.image = UIImage(named: ImageList1)
        labelUILabel.text = "\(foodItem1) - Rs. \(price1)"
        
        image2UIImageView.image = UIImage(named: ImageList2)
        label2UILabel.text = "\(foodItem2) - Rs. \(price2)"
        
        additionUILabel.text = "\(addition)"


}
    

}

