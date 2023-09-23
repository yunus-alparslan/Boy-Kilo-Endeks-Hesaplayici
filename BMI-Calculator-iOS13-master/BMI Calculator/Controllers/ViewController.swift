import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var metreLabel: UILabel!
    @IBOutlet weak var kilogramLabel: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var myveriables = myVeriables()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func heightView(_ sender: UISlider) {
        
        myveriables.heightSliderValue =  String(format: "%.2f",sender.value) + "m"
        
        
        metreLabel.text = myveriables.heightSliderValue
        
        
        
    }
    
    @IBAction func weightView(_ sender: UISlider) {
        
        myveriables.weightSliderValue = String(format: "%.0f",sender.value) + "Kg"
        
        metreLabel.text = myveriables.weightSliderValue
        
    }
    
    @IBAction func acctionCalcuteButton(_ sender: Any) {
        
        let heightsl = sliderHeight.value
        let weightsl = weightSlider.value
        
        
        let bmi = billCount(weightsl: weightsl, heightsl: heightsl)
        
        
        myveriables.bmivValue = bmi
        
        self.performSegue(withIdentifier: "gotoCalc", sender: self)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoCalc" {
    
            let destionmvc = segue.destination as! CalculatedViewController?
            
            destionmvc?.bmiValue = myveriables.bmivValue
    
            
            
        }
    }
    
    
}

