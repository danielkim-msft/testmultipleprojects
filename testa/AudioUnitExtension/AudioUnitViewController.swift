//
//  AudioUnitViewController.swift
//  AudioUnitExtension
//
//  Created by Daniel Kim on 9/13/18.
//  Copyright © 2018 Daniel Kim. All rights reserved.
//

import CoreAudioKit

public class AudioUnitViewController: AUViewController, AUAudioUnitFactory {
    var audioUnit: AUAudioUnit?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if audioUnit == nil {
            return
        }
        
        // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
    }
    
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        audioUnit = try AudioUnitExtensionAudioUnit(componentDescription: componentDescription, options: [])
        
        return audioUnit!
    }
    
}
