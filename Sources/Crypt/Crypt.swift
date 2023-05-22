import Flutter



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
