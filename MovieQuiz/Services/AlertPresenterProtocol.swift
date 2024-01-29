import UIKit

protocol AlertPresenterProtocol {
    var delegate: UIViewController? { get set }
    func show(quiz result: AlertModel)
}
