// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library protoc.benchmark.suite.json;

import '../benchmarks/int32_json.dart';
import '../benchmarks/repeated_int32_json.dart';
import '../generated/benchmark.pb.dart' show Request, Suite;

final jsonSuite = () {
  var suite = new Suite();
  suite.requests.addAll([
    _newRequest(1, 100),
    _newRequest(2, 100),
    _newRequest(10, 100),
    _newRequest(10, 200),
    _newRepeatedRequest(1, 100),
    _newRepeatedRequest(2, 100),
    _newRepeatedRequest(10, 100),
    _newRepeatedRequest(10, 200),
  ]);

  return suite;
}();

_newRequest(int width, int height) =>
    new Int32Benchmark(width, height).makeRequest();

_newRepeatedRequest(int width, int height) =>
    new RepeatedInt32Benchmark(width, height).makeRequest();