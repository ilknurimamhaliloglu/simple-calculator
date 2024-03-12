import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultText: UILabel!
    
    var firstNumber : Int = 0;
    var secondNumber : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstNumberTextFieldOnChanged(_ sender: Any) {
        firstNumber = Int(firstNumberTextField.text ?? "0") ?? 0
    }
    
    @IBAction func secondNumberTextFieldOnChanged(_ sender: Any) {
        secondNumber = Int(secondNumberTextField.text ?? "0") ?? 0
    }
    
    @IBAction func addition(_ sender: Any) {
        let result = firstNumber + secondNumber
        resultText.text = String(result)
    }
    
    @IBAction func subtraction(_ sender: Any) {
        let result = firstNumber - secondNumber
        resultText.text = String(result)
    }
    
    @IBAction func multiplication(_ sender: Any) {
        let result = firstNumber * secondNumber
        resultText.text = String(result)
    }
    
    @IBAction func division(_ sender: Any) {
        if ((Int(firstNumber) != 0) && (Int(secondNumber) != 0)){
            let result = firstNumber / secondNumber
            resultText.text = String(result)
        }
    }
}

