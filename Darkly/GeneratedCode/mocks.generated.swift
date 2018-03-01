// Generated using Sourcery 0.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//swiftlint:disable vertical_whitespace


import DarklyEventSource
@testable import Darkly


// MARK: - DarklyStreamingProviderMock
final class DarklyStreamingProviderMock: DarklyStreamingProvider {
    var callback: ((String) -> Void)?

    // MARK: onMessageEvent
    var onMessageEventCallCount = 0
    var onMessageEventReceivedHandler: LDEventSourceEventHandler?
    func onMessageEvent(_ handler: LDEventSourceEventHandler?) {
        onMessageEventCallCount += 1
        onMessageEventReceivedHandler = handler
        callback?("\(#function)")
    }

    // MARK: onErrorEvent
    var onErrorEventCallCount = 0
    var onErrorEventReceivedHandler: LDEventSourceEventHandler?
    func onErrorEvent(_ handler: LDEventSourceEventHandler?) {
        onErrorEventCallCount += 1
        onErrorEventReceivedHandler = handler
        callback?("\(#function)")
    }

    // MARK: close
    var closeCallCount = 0
    func close() {
        closeCallCount += 1
        callback?("\(#function)")
    }
}

// MARK: - FlagChangeNotifyingMock
final class FlagChangeNotifyingMock: FlagChangeNotifying {
    var callback: ((String) -> Void)?

    // MARK: addObserver
    var addObserverCallCount = 0
    var addObserverReceivedObserver: LDFlagObserver?
    func addObserver(_ observer: LDFlagObserver) {
        addObserverCallCount += 1
        addObserverReceivedObserver = observer
        callback?("\(#function)")
    }

    // MARK: removeObserver
    var removeObserverCallCount = 0
    var removeObserverReceivedArguments: (keys: [LDFlagKey], owner: LDFlagChangeOwner)?
    func removeObserver(_ keys: [LDFlagKey], owner: LDFlagChangeOwner) {
        removeObserverCallCount += 1
        removeObserverReceivedArguments = (keys: keys, owner: owner)
        callback?("\(#function)")
    }

    // MARK: notifyObservers
    var notifyObserversCallCount = 0
    var notifyObserversReceivedArguments: (changedFlags: [LDFlagKey], user: LDUser, oldFlags: [LDFlagKey: Any])?
    func notifyObservers(changedFlags: [LDFlagKey], user: LDUser, oldFlags: [LDFlagKey: Any]) {
        notifyObserversCallCount += 1
        notifyObserversReceivedArguments = (changedFlags: changedFlags, user: user, oldFlags: oldFlags)
        callback?("\(#function)")
    }
}

// MARK: - FlagCollectionCachingMock
final class FlagCollectionCachingMock: FlagCollectionCaching {
    var callback: ((String) -> Void)?

    // MARK: retrieveFlags
    var retrieveFlagsCallCount = 0
    var retrieveFlagsReturnValue: [String: CacheableUserFlags] = [:]
    func retrieveFlags() -> [String: CacheableUserFlags] {
        retrieveFlagsCallCount += 1
        return retrieveFlagsReturnValue
        callback?("\(#function)")
    }

    // MARK: storeFlags
    var storeFlagsCallCount = 0
    var storeFlagsReceivedFlags: [String: CacheableUserFlags]?
    func storeFlags(_ flags: [String: CacheableUserFlags]) {
        storeFlagsCallCount += 1
        storeFlagsReceivedFlags = flags
        callback?("\(#function)")
    }
}

// MARK: - FlagMaintainingMock
final class FlagMaintainingMock: FlagMaintaining {
    var callback: ((String) -> Void)?

    // MARK: featureFlags
    var featureFlagsSetCount = 0
    var featureFlags: [LDFlagKey: FeatureFlag] = [:] {
        didSet { featureFlagsSetCount += 1; callback?("\(#function)") }
    }

    // MARK: flagValueSource
    var flagValueSourceSetCount = 0
    var flagValueSource: LDFlagValueSource = .cache {
        didSet { flagValueSourceSetCount += 1; callback?("\(#function)") }
    }

    // MARK: replaceStore
    var replaceStoreCallCount = 0
    var replaceStoreReceivedArguments: (newFlags: [LDFlagKey: Any]?, source: LDFlagValueSource, completion: CompletionClosure?)?
    func replaceStore(newFlags: [LDFlagKey: Any]?, source: LDFlagValueSource, completion: CompletionClosure?) {
        replaceStoreCallCount += 1
        replaceStoreReceivedArguments = (newFlags: newFlags, source: source, completion: completion)
        callback?("\(#function)")
    }

    // MARK: updateStore
    var updateStoreCallCount = 0
    var updateStoreReceivedArguments: (updateDictionary: [String: Any], source: LDFlagValueSource, completion: CompletionClosure?)?
    func updateStore(updateDictionary: [String: Any], source: LDFlagValueSource, completion: CompletionClosure?) {
        updateStoreCallCount += 1
        updateStoreReceivedArguments = (updateDictionary: updateDictionary, source: source, completion: completion)
        callback?("\(#function)")
    }

    // MARK: deleteFlag
    var deleteFlagCallCount = 0
    var deleteFlagReceivedArguments: (deleteDictionary: [String: Any], completion: CompletionClosure?)?
    func deleteFlag(deleteDictionary: [String: Any], completion: CompletionClosure?) {
        deleteFlagCallCount += 1
        deleteFlagReceivedArguments = (deleteDictionary: deleteDictionary, completion: completion)
        callback?("\(#function)")
    }
}

// MARK: - KeyedValueCachingMock
final class KeyedValueCachingMock: KeyedValueCaching {
    var callback: ((String) -> Void)?

    // MARK: set
    var setCallCount = 0
    var setReceivedArguments: (value: Any?, forKey: String)?
    func set(_ value: Any?, forKey: String) {
        setCallCount += 1
        setReceivedArguments = (value: value, forKey: forKey)
        callback?("\(#function)")
    }

    // MARK: dictionary
    var dictionaryCallCount = 0
    var dictionaryReceivedForKey: String?
    var dictionaryReturnValue: [String: Any]? = nil
    func dictionary(forKey: String) -> [String: Any]? {
        dictionaryCallCount += 1
        dictionaryReceivedForKey = forKey
        return dictionaryReturnValue
        callback?("\(#function)")
    }

    // MARK: removeObject
    var removeObjectCallCount = 0
    var removeObjectReceivedForKey: String?
    func removeObject(forKey: String) {
        removeObjectCallCount += 1
        removeObjectReceivedForKey = forKey
        callback?("\(#function)")
    }
}

// MARK: - LDEventReportingMock
final class LDEventReportingMock: LDEventReporting {
    var callback: ((String) -> Void)?

    // MARK: config
    var configSetCount = 0
    var config: LDConfig = LDConfig.stub {
        didSet { configSetCount += 1; callback?("\(#function)") }
    }

    // MARK: isOnline
    var isOnlineSetCount = 0
    var isOnline: Bool = false {
        didSet { isOnlineSetCount += 1; callback?("\(#function)") }
    }

    // MARK: service
    var serviceSetCount = 0
    var service: DarklyServiceProvider = DarklyServiceMock() {
        didSet { serviceSetCount += 1; callback?("\(#function)") }
    }

    // MARK: record
    var recordCallCount = 0
    var recordReceivedArguments: (event: Darkly.LDEvent, completion: CompletionClosure?)?
    func record(_ event: Darkly.LDEvent, completion: CompletionClosure?) {
        recordCallCount += 1
        recordReceivedArguments = (event: event, completion: completion)
        callback?("\(#function)")
    }

    // MARK: reportEvents
    var reportEventsCallCount = 0
    func reportEvents() {
        reportEventsCallCount += 1
        callback?("\(#function)")
    }
}

// MARK: - LDFlagSynchronizingMock
final class LDFlagSynchronizingMock: LDFlagSynchronizing {
    var callback: ((String) -> Void)?

    // MARK: isOnline
    var isOnlineSetCount = 0
    var isOnline: Bool = false {
        didSet { isOnlineSetCount += 1; callback?("\(#function)") }
    }
}

// MARK: - UserFlagCachingMock
final class UserFlagCachingMock: UserFlagCaching {
    var callback: ((String) -> Void)?

    // MARK: cacheFlags
    var cacheFlagsCallCount = 0
    var cacheFlagsReceivedUser: LDUser?
    func cacheFlags(for user: LDUser) {
        cacheFlagsCallCount += 1
        cacheFlagsReceivedUser = user
        callback?("\(#function)")
    }

    // MARK: retrieveFlags
    var retrieveFlagsCallCount = 0
    var retrieveFlagsReceivedUser: LDUser?
    var retrieveFlagsReturnValue: CacheableUserFlags? = nil
    func retrieveFlags(for user: LDUser) -> CacheableUserFlags? {
        retrieveFlagsCallCount += 1
        retrieveFlagsReceivedUser = user
        return retrieveFlagsReturnValue
        callback?("\(#function)")
    }
}
