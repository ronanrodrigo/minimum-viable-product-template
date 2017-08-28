import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var participate = LookbackParticipate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        LookbackRecorder.setup(withAppToken: "token")
        LookbackRecorder.shared().shakeToRecord = true
        LookbackRecorder.shared().feedbackBubbleVisible = true
        LookbackRecorder.shared().options.afterRecording  = .recordingReview
        LookbackRecorder.shared().options.allowSavingPreviewsAsDrafts = true
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool
    {
        return participate.startParticipation(from: url)
    }

}
