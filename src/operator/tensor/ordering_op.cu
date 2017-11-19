/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

/*!
 *  Copyright (c) 2015 by Contributors
 * \file matrix_op.cu
 * \brief GPU Implementation of matrix operations
 */
// this will be invoked by gcc and compile GPU version
#include "./ordering_op-inl.h"


namespace mxnet {
namespace op {
NNVM_REGISTER_OP(topk)
.set_attr<FCompute>("FCompute<gpu>", TopK<gpu>);

NNVM_REGISTER_OP(_backward_topk)
.set_attr<FCompute>("FCompute<gpu>", TopKBackward_<gpu>);

NNVM_REGISTER_OP(sort)
.set_attr<FCompute>("FCompute<gpu>", Sort<gpu>);

NNVM_REGISTER_OP(argsort)
.set_attr<FCompute>("FCompute<gpu>", ArgSort<gpu>);
}  // namespace op
}  // namespace mxnet
