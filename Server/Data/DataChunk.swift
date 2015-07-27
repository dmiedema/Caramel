//
//  DataChunk.swift
//  Jelly
//
//  Created by Steve Streza on 26.7.15.
//  Copyright © 2015 Lunar Guard. All rights reserved.
//

import Darwin

public struct DataChunk: Data {
	public private(set) var bytes: [Byte] = []
	public mutating func append(bytes: [Byte]) {
		self.bytes += bytes
	}
	
	public var hashValue: Int {
		get {
			return self.jenkinsHash
		}
	}
}