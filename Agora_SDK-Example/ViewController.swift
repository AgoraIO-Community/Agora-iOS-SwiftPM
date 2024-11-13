//
//  ViewController.swift
//  Agora_SDK-Example
//
//  Created by Max Cobb on 23/06/2021.
//

import UIKit
import AgoraRtcKit

class ViewController: UIViewController {

    // Defines localView
    var localView: UIView!
    // Defines remoteView
    var remoteView: UIView!

    // Defines agoraKit
    var agoraKit: AgoraRtcEngineKit?

    override func viewDidLoad() {
        super.viewDidLoad()
        // This function initializes the local and remote video views
        initView()
        // The following functions are used when calling Agora APIs
        initializeAgoraEngine()
        setupLocalVideo()
        joinChannel()
    }

    // Sets the video view layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        remoteView.frame = self.view.bounds
        localView.frame = CGRect(x: self.view.bounds.width - 90, y: 0, width: 90, height: 160)
    }

    func initView() {
        // Initializes the remote video view
        remoteView = UIView()
        self.view.addSubview(remoteView)
        // Initializes the local video view
        localView = UIView()
        self.view.addSubview(localView)
    }

    func initializeAgoraEngine() {
        agoraKit = AgoraRtcEngineKit.sharedEngine(withAppId: <#Agora App ID#>, delegate: self)
    }

    func setupLocalVideo() {
        // Enables the video module
        agoraKit?.enableVideo()
        let videoCanvas = AgoraRtcVideoCanvas()
        videoCanvas.uid = 0
        videoCanvas.renderMode = .hidden
        videoCanvas.view = localView
        // Sets the local video view
        agoraKit?.setupLocalVideo(videoCanvas)
        agoraKit?.startPreview()
    }

    func joinChannel(){
        // The uid of each user in the channel must be unique.
        agoraKit?.joinChannel(byToken: <#Agora Token#>, channelId: <#Channel Name#>, info: nil, uid: 0)
    }

    func leaveChannel() {
        agoraKit?.stopPreview()
        agoraKit?.leaveChannel(nil)
        AgoraRtcEngineKit.destroy()
    }

}

extension ViewController: AgoraRtcEngineDelegate {
    func rtcEngine(_ engine: AgoraRtcEngineKit, didJoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
        print("joined channel, \(channel)!")
    }
    func rtcEngine(
        _ engine: AgoraRtcEngineKit, didClientRoleChanged oldRole: AgoraClientRole, newRole: AgoraClientRole
    ) {
        print(newRole)
    }
    // Monitors the didJoinedOfUid callback
    // The SDK triggers the callback when a remote user joins the channel
    func rtcEngine(_ engine: AgoraRtcEngineKit, didJoinedOfUid uid: UInt, elapsed: Int) {
        let videoCanvas = AgoraRtcVideoCanvas()
        videoCanvas.uid = uid
        videoCanvas.renderMode = .hidden
        videoCanvas.view = remoteView
        agoraKit?.setupRemoteVideo(videoCanvas)
    }
    func rtcEngine(_ engine: AgoraRtcEngineKit, didOfflineOfUid uid: UInt, reason: AgoraUserOfflineReason) {
        print("user: \(uid) left with reason: \(reason.rawValue)")
    }
}
