import Foundation

struct TutorialReducer: ReducerType {
    
    typealias State = TutorialState
    
    func reduce(result: ResultType, state: TutorialState) -> TutorialState {
        
//        guard let tutorialResult = result as? TutorialResult else { return state }
        
//        switch accountResult {
//        case .loading: return AccountState(OneTimeEvent(true))
//        }
//        #warning("Remove this line after implement 'switch-case'")
        return state
    }
}
