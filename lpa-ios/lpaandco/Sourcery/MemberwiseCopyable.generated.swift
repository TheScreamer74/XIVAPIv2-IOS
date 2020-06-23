// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ParkingState {
    func copy(canOpenGate: Bool? = nil) -> ParkingState {
        return ParkingState(
            canOpenGate: canOpenGate ?? self.canOpenGate
        )
    }
}

