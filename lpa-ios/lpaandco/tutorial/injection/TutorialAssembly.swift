import Foundation
import Swinject

class TutorialAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(TutorialProcessor.self) { _ in
            TutorialProcessor()
        }.inObjectScope(.container)
        
        container.register(TutorialReducer.self) { _ in
            TutorialReducer()
        }.inObjectScope(.container)
    }
}
