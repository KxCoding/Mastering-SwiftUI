//
//  Mastering SwiftUI
//  Copyright (c) KxCoding <help@kxcoding.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

struct AppleProduct: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let summary: String
    let category: String
    let price: Int
}

extension AppleProduct {
    static var sampleList: [AppleProduct] {
        return [
            AppleProduct(name: "MacBook Air",
                         summary: """
                        Apple M1 칩(8코어 CPU, 8코어 GPU, 16코어 Neural Engine)
                        8GB 통합 메모리
                        512GB SSD 저장 장치¹
                        True Tone이 탑재된 Retina 디스플레이
                        Magic Keyboard
                        Touch ID
                        Force Touch 트랙패드
                        Thunderbolt/USB 4 포트 2개
                        """,
                         category: "Mac",
                         price: 1_630_000),
            AppleProduct(name: "MacBook Pro",
                         summary: """
                        16코어 Neural Engine
                        16형 Liquid Retina XDR 디스플레이
                        Thunderbolt 4 포트 3개, HDMI 포트, SDXC 카드 슬롯, MagSafe 3 포트
                        Touch ID 탑재형 Magic Keyboard
                        Force Touch 트랙패드
                        140W USB-C 전원 어댑터
                        """,
                         category: "Mac",
                         price: 4_710_000),
            AppleProduct(name: "iMac Retina 5K",
                         summary: """
                        3.8GHz 8코어 10세대 Intel Core i7 프로세서
                        최대 5.0GHz Turbo Boost
                        8GB 2666MHz DDR4 메모리(최대 128GB로 구성 가능)
                        512GB SSD 저장 장치¹
                        Radeon Pro 5500 XT(8GB GDDR6 메모리)
                        Thunderbolt 3 포트 2개
                        True Tone 기술이 탑재된 Retina 5K 5120 x 2880 P3 디스플레이(Nano-texture 글래스로 선택 가능)
                        """,
                         category: "Mac",
                         price: 3_120_000),
            AppleProduct(name: "Mac Pro",
                         summary: """
                        3.5GHz 8코어 Intel Xeon W 프로세서(최대 4.0GHz Turbo Boost)
                        32GB(4x8GB) DDR4 ECC 메모리
                        Radeon Pro 580X(8GB GDDR5 메모리)
                        256GB SSD 저장 장치
                        발판 달린 스테인리스 스틸 프레임
                        """,
                         category: "Mac",
                         price: 6_300_000),
            AppleProduct(name: "Mac mini",
                         summary: """
                        Apple M1 칩(8코어 CPU, 8코어 GPU, 16코어 Neural Engine)
                        8GB 통합 메모리
                        512GB SSD 저장 장치¹
                        Gigabit Ethernet
                        """,
                         category: "Mac",
                         price: 1_160_000),
            AppleProduct(name: "iPad Pro 12.9\"",
                         summary: """
                        실버 / 스페이스 그레이
                        1TB
                        Wi-Fi + Cellular
                        """,
                         category: "iPad",
                         price: 2_470_000),
            AppleProduct(name: "iPad Air",
                         summary: """
                        실버 / 스페이스 그레이 / 골드
                        256GB
                        Wi-Fi + Cellular
                        """,
                         category: "iPad",
                         price: 999_000),
            AppleProduct(name: "iPad",
                         summary: """
                        실버 / 스페이스 그레이 / 골드
                        128GB
                        Wi-Fi + Cellular
                        """,
                         category: "iPad",
                         price: 720_000),
            AppleProduct(name: "Apple Pencil",
                         summary: """
                        호환 기기:
                        12.9형 iPad Pro(3세대)
                        11형 iPad Pro
                        """,
                         category: "iPad",
                         price: 159_000),
            AppleProduct(name: "iPhone 13",
                         summary: """
                        6.1" Super Retina XDR 디스플레이
                        스타라이트, 미드나이트, 블루, 핑크, Product RED
                        A15 Bionic 칩
                        256GB
                        듀얼 12MP 카메라 시스템: 와이드, 울트라 와이드 카메라
                        IEC 규격 60529하의 IP68 등급 획득(최대 수심 6m, 최대 30분)
                        """,
                         category: "iPhone",
                         price: 1_230_000),
            AppleProduct(name: "iPhone 13 Pro Max",
                         summary: """
                        6.7" ProMotion 기술이 적용된 Super Retina XDR 디스플레이
                        그래파이트, 골드, 실버, 시에라 블루
                        A15 Bionic 칩
                        256GB
                        프로급 12MP 카메라 시스템: 망원, 와이드, 울트라 와이드 카메라
                        IEC 규격 60529하의 IP68 등급 획득(최대 수심 6m, 최대 30분)
                        """,
                         category: "iPhone",
                         price: 1_630_000),
            AppleProduct(name: "iPhone 13 Pro",
                         summary: """
                        6.1" ProMotion 기술이 적용된 Super Retina XDR 디스플레이
                        그래파이트, 골드, 실버, 시에라 블루
                        A15 Bionic 칩
                        256GB
                        프로급 12MP 카메라 시스템: 망원, 와이드, 울트라 와이드 카메라
                        IEC 규격 60529하의 IP68 등급 획득(최대 수심 6m, 최대 30분)
                        """,
                         category: "iPhone",
                         price: 1_490_000),
            
            AppleProduct(name: "Apple Watch Series 7",
                         summary: """
                        45mm
                        상시표시형 Retina 디스플레이
                        알루미늄 / 스텐인리스 스틸 / 티타늄
                        GPS + Cellular
                        """,
                         category: "Apple Watch",
                         price: 659_000)
        ]
        
    }
}
