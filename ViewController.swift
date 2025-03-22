import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleApp(_ sender: UIButton) {
        // Replace with the URL scheme of the target app
        if let url = URL(string: "targetapp://") { // Replace "targetapp" with the actual URL scheme
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                // Handle the case where the app is not installed
                showAlert("App not installed", "Please install the target app to use this feature.")
            }
        }
    }
    
    private func showAlert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true, completion: nil)
    }
}
