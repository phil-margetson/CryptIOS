import Flutter

public class MyLibrary {

    var myLibraryFlutterChannel: MyLibraryFlutterChannel
    var methodChannel: FlutterMethodChannel

//    public init(origin: String, apiKey: String, onBuild: TikiSdkCompletion? = nil) {
//        myLibraryFlutterChannel = MyLibraryFlutterChannel()
//        methodChannel = myLibraryFlutterChannel.methodChannel
//    }
//
//    public func someMethod(){
//        methodChannel.invokeMethod('someMethod')
//    }
}

public class MyLibraryFlutterChannel {

    let channelId = "my_library_channel"

    var flutterEngine: FlutterEngine
    public var methodChannel: FlutterMethodChannel

    public init() {
        flutterEngine = FlutterEngine(name: "my_library_engine")
        flutterEngine.run()
       // GeneratedPluginRegistrant.register(with: flutterEngine);
        methodChannel = FlutterMethodChannel.init(name: channelId, binaryMessenger: flutterEngine as! FlutterBinaryMessenger)
        methodChannel.setMethodCallHandler(handle)
    }

    public func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
      
    }

}
