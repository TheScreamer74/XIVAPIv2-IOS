// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

extension ServersState {
    func copy(downloadingHtml: Bool? = nil, downloadedHtml: OneTimeEvent<String>? = nil, downloadError: OneTimeEvent<Error>? = nil) -> ServersState {
        return ServersState(
            isDownloaded: isDownloaded ?? self.isDownloaded
        )
    }
}

