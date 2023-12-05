
import UIKit

class AlertPresenter: AlertPresenterProtocol{
    weak var delegate: UIViewController?
    init(delegate: UIViewController? = nil) {
        self.delegate = delegate
    }
    
    private func show(quiz result: AlertModel) {
        let alert = UIAlertController(
            title: result.title,
            message: result.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: result.buttonText, style: .default) { [weak self] _ in
            guard let self = self else { return }
            self.currentQuestionIndex = 0
            self.correctAnswers = 0
            questionFactory?.requestNextQuestion()
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}
