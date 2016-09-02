

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    var text = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        myLabel.text = text
        
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
}

}