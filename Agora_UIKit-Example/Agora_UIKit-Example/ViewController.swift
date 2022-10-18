//
//  ViewController.swift
//  Agora_UIKit-Example
//
//  Created by Max Cobb on 23/06/2021.
//

import UIKit
import AgoraRtcKit
import AgoraUIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let agoraView = AgoraVideoViewer(
            connectionData: AgoraConnectionData(appId: <#Agora App ID#>)
        )
        agoraView.fills(view: self.view)

        agoraView.join(
            channel: <#Channel Name#>, with: <#Agora Token#>,
            as: .broadcaster, uid: 0
        )
    }
}
