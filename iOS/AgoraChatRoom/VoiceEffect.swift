//
//  VoiceEffect.swift
//  AgoraChatRoom
//
//  Created by CavanSu on 14/03/2018.
//  Copyright © 2018 Agora. All rights reserved.
//

import UIKit
import AgoraAudioKit

// MARK: EffectCharacters
enum EffectCharacters: Int {
    case OldMan = 0
    case BabyBoy
    case ZhuBaJie
    case Ethereal
    case Hulk
    case BabyGirl
    
    static func list() -> [EffectCharacters] {
        return [.OldMan,
                .BabyBoy,
                .ZhuBaJie,
                .Ethereal,
                .Hulk,
                .BabyGirl]
    }
}

extension EffectCharacters: CSDescriptable {
    func description() -> String {
        switch self {
        case .OldMan:   return "大叔"
        case .BabyBoy:  return "正太"
        case .ZhuBaJie: return "猪八戒"
        case .Ethereal: return "空灵"
        case .Hulk:     return "浩克"
        case .BabyGirl: return "萝莉"
        }
    }
}

// MARK: EffectDefault
struct VoiceEffect {
    static func common(agoraKit: AgoraRtcEngineKit) {
        agoraKit.setLocalVoicePitch(1)
        
        agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: 0)
        
        agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: 0)
        agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: 0)
        agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 0)
        agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 0)
        agoraKit.setLocalVoiceReverbOf(.strength, withValue: 0)
    }
    
    static func fm(agoraKit: AgoraRtcEngineKit) {
        agoraKit.setLocalVoicePitch(1)
        
        agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: 0)
        agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: 0)
        
        agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: -1)
        agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: -7)
        agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 57)
        agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 135)
        agoraKit.setLocalVoiceReverbOf(.strength, withValue: 45)
    }
    
    static func character(agoraKit: AgoraRtcEngineKit, character: EffectCharacters) {
        switch character {
        case .OldMan:
            agoraKit.setLocalVoicePitch(0.8)
            
            agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: -15)
            agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: 0)
            agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: 6)
            agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: 1)
            agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: -4)
            agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: 1)
            agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: -10)
            agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: -5)
            agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: 3)
            agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: 3)
            
            agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: -12)
            agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: -12)
            agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 0)
            agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 90)
            agoraKit.setLocalVoiceReverbOf(.strength, withValue: 43)
            
        case .BabyBoy:
            agoraKit.setLocalVoicePitch(1.23)
            
            agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: 15)
            agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: 11)
            agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: -3)
            agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: -5)
            agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: -7)
            agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: -7)
            agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: -9)
            agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: -15)
            agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: -15)
            agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: -15)
            
            agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: 4)
            agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: 2)
            agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 0)
            agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 91)
            agoraKit.setLocalVoiceReverbOf(.strength, withValue: 44)
            
        case .ZhuBaJie:
            agoraKit.setLocalVoicePitch(0.6)
            
            agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: 12)
            agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: -9)
            agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: -9)
            agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: 3)
            agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: -3)
            agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: 11)
            agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: 1)
            agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: -8)
            agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: -8)
            agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: -9)
            
            agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: -14)
            agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: -8)
            agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 34)
            agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 0)
            agoraKit.setLocalVoiceReverbOf(.strength, withValue: 39)
            
        case .Ethereal:
            agoraKit.setLocalVoicePitch(1)
            
            agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: -8)
            agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: -8)
            agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: 5)
            agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: 13)
            agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: 2)
            agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: 12)
            agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: -3)
            agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: 7)
            agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: -2)
            agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: -10)
            
            agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: -17)
            agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: -13)
            agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 72)
            agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 9)
            agoraKit.setLocalVoiceReverbOf(.strength, withValue: 69)
            
        case .Hulk:
            agoraKit.setLocalVoicePitch(0.5)
            
            agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: -15)
            agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: 3)
            agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: -9)
            agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: -8)
            agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: -6)
            agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: -4)
            agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: -3)
            agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: -2)
            agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: -1)
            agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: 1)
            
            agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: 10)
            agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: -9)
            agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 76)
            agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 124)
            agoraKit.setLocalVoiceReverbOf(.strength, withValue: 78)
            
        case .BabyGirl:
            agoraKit.setLocalVoicePitch(1.45)
            
            agoraKit.setLocalVoiceEqualizationOf(.band31, withGain: 10)
            agoraKit.setLocalVoiceEqualizationOf(.band62, withGain: 6)
            agoraKit.setLocalVoiceEqualizationOf(.band125, withGain: 1)
            agoraKit.setLocalVoiceEqualizationOf(.band250, withGain: 1)
            agoraKit.setLocalVoiceEqualizationOf(.band500, withGain: -6)
            agoraKit.setLocalVoiceEqualizationOf(.band1K, withGain: 13)
            agoraKit.setLocalVoiceEqualizationOf(.band2K, withGain: 7)
            agoraKit.setLocalVoiceEqualizationOf(.band4K, withGain: -14)
            agoraKit.setLocalVoiceEqualizationOf(.band8K, withGain: 13)
            agoraKit.setLocalVoiceEqualizationOf(.band16K, withGain: -13)
            
            agoraKit.setLocalVoiceReverbOf(.dryLevel, withValue: -11)
            agoraKit.setLocalVoiceReverbOf(.wetLevel, withValue: -7)
            agoraKit.setLocalVoiceReverbOf(.roomSize, withValue: 0)
            agoraKit.setLocalVoiceReverbOf(.wetDelay, withValue: 31)
            agoraKit.setLocalVoiceReverbOf(.strength, withValue: 44)
        }
    }
}

// MARK: protocol and Other structs
protocol CSDescriptable {
    func description() -> String
}
