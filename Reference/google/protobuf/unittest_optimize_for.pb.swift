/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_optimize_for.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which uses optimize_for = CODE_SIZE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

fileprivate let _protobuf_package = "protobuf_unittest"

struct ProtobufUnittest_TestOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestOptimizedForSize"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "i"),
    19: .same(proto: "msg"),
    2: .standard(proto: "integer_field"),
    3: .standard(proto: "string_field"),
  ]

  private class _StorageClass {
    var _i: Int32? = nil
    var _msg: ProtobufUnittest_ForeignMessage? = nil
    var _foo: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo?

    init() {}

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._i = _i
      clone._msg = _msg
      clone._foo = _foo
      return clone
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  var i: Int32 {
    get {return _storage._i ?? 0}
    set {_uniqueStorage()._i = newValue}
  }
  var hasI: Bool {
    return _storage._i != nil
  }
  mutating func clearI() {
    return _storage._i = nil
  }

  var msg: ProtobufUnittest_ForeignMessage {
    get {return _storage._msg ?? ProtobufUnittest_ForeignMessage()}
    set {_uniqueStorage()._msg = newValue}
  }
  var hasMsg: Bool {
    return _storage._msg != nil
  }
  mutating func clearMsg() {
    return _storage._msg = nil
  }

  var integerField: Int32 {
    get {
      if case .integerField(let v)? = _storage._foo {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._foo = .integerField(newValue)
    }
  }

  var stringField: String {
    get {
      if case .stringField(let v)? = _storage._foo {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._foo = .stringField(newValue)
    }
  }

  var foo: OneOf_Foo? {
    get {return _storage._foo}
    set {
      _uniqueStorage()._foo = newValue
    }
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Foo: Equatable {
    case integerField(Int32)
    case stringField(String)

    static func ==(lhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo, rhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo) -> Bool {
      switch (lhs, rhs) {
      case (.integerField(let l), .integerField(let r)): return l == r
      case (.stringField(let l), .stringField(let r)): return l == r
      default: return false
      }
    }

    fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
      switch fieldNumber {
      case 2:
        var value: Int32?
        try decoder.decodeSingularInt32Field(value: &value)
        if let value = value {
          self = .integerField(value)
          return
        }
      case 3:
        var value: String?
        try decoder.decodeSingularStringField(value: &value)
        if let value = value {
          self = .stringField(value)
          return
        }
      default:
        break
      }
      return nil
    }

    fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V, start: Int, end: Int) throws {
      switch self {
      case .integerField(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
        }
      case .stringField(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularStringField(value: v, fieldNumber: 3)
        }
      }
    }
  }

  struct Extensions {

    static let test_extension = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_TestOptimizedForSize>(
      _protobuf_fieldNumber: 1234,
      fieldName: "protobuf_unittest.TestOptimizedForSize.test_extension",
      defaultValue: 0
    )

    static let test_extension2 = SwiftProtobuf.MessageExtension<OptionalMessageExtensionField<ProtobufUnittest_TestRequiredOptimizedForSize>, ProtobufUnittest_TestOptimizedForSize>(
      _protobuf_fieldNumber: 1235,
      fieldName: "protobuf_unittest.TestOptimizedForSize.test_extension2",
      defaultValue: ProtobufUnittest_TestRequiredOptimizedForSize()
    )
  }

  init() {}

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._i)
        case 19: try decoder.decodeSingularMessageField(value: &_storage._msg)
        case 2, 3:
          if _storage._foo != nil {
            try decoder.handleConflictingOneOf()
          }
          _storage._foo = try ProtobufUnittest_TestOptimizedForSize.OneOf_Foo(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
        case 1000..<536870912:
          try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_TestOptimizedForSize.self, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._i {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      try _storage._foo?.traverse(visitor: &visitor, start: 2, end: 4)
      if let v = _storage._msg {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 19)
      }
      try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 1000, end: 536870912)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestOptimizedForSize) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._i != other_storage._i {return false}
        if _storage._msg != other_storage._msg {return false}
        if _storage._foo != other_storage._foo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    if _protobuf_extensionFieldValues != other._protobuf_extensionFieldValues {return false}
    return true
  }

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
}

struct ProtobufUnittest_TestRequiredOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestRequiredOptimizedForSize"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
  ]

  private var _x: Int32? = nil
  var x: Int32 {
    get {return _x ?? 0}
    set {_x = newValue}
  }
  var hasX: Bool {
    return _x != nil
  }
  mutating func clearX() {
    return _x = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if _x == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &_x)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _x {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestRequiredOptimizedForSize) -> Bool {
    if _x != other._x {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_TestOptionalOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestOptionalOptimizedForSize"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "o"),
  ]

  private class _StorageClass {
    var _o: ProtobufUnittest_TestRequiredOptimizedForSize? = nil

    init() {}

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._o = _o
      return clone
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  var o: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return _storage._o ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {_uniqueStorage()._o = newValue}
  }
  var hasO: Bool {
    return _storage._o != nil
  }
  mutating func clearO() {
    return _storage._o = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._o, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._o)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._o {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestOptionalOptimizedForSize) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._o != other_storage._o {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension, value: newValue)}
  }
  var hasProtobufUnittest_TestOptimizedForSize_testExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension)
  }
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension)
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension2: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2) ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2, value: newValue)}
  }
  var hasProtobufUnittest_TestOptimizedForSize_testExtension2: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2)
  }
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension2() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2)
  }
}

let ProtobufUnittest_UnittestOptimizeFor_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension,
  ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2
]
