//
//  SettingsViewController.swift
//  AtividadeSabado
//
//  Created by COTEMIG on 28/06/25.
//

import UIKit
var isDarkMode: Bool = true
var textSize: Int = 16;
let goldColor = UIColor(red: 230, green: 191, blue: 64, alpha: 1)
class SettingsViewController: UIViewController {

    @IBOutlet weak var SliderWidget: UISlider!
    @IBOutlet weak var SwitchWidget: UISwitch!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var VolumeIcon: UIImageView!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var SelectWidget: UIButton!
    @IBAction func SwitchChanged(_ sender: Any) {
        isDarkMode.toggle()
        if(isDarkMode){
            SwitchWidget.onTintColor = goldColor
            lbl1.tintColor = UIColor.white
            SliderWidget.tintColor = goldColor
            VolumeIcon.tintColor = goldColor
        }else{
            lbl1.tintColor = UIColor.black
        }
    }
    func switchTextSizes(){
        lbl1.font = UIFont.systemFont(ofSize: CGFloat(textSize))
        lbl2.font = UIFont.systemFont(ofSize: CGFloat(textSize))
    }
    override func viewDidLoad() {
        let action1 = UIAction(title: "16px", handler: { _ in
            textSize = 16
            self.switchTextSizes()
        })
        let action2 = UIAction(title: "20px", handler: { _ in
            textSize = 20
            self.switchTextSizes()
        })

        let menu = UIMenu(title: "Choose Option", children: [action1, action2])
        SelectWidget.menu = menu
        SelectWidget.showsMenuAsPrimaryAction = true
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
