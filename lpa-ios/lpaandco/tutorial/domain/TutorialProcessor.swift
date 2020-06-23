import Foundation

struct TutorialProcessor: ProcessorType {
    
    typealias Completion = (ResultType) -> Void
    
    func process(action: ActionType, next: @escaping Completion) {
        
    }
}
