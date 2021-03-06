// Copyright (c) 2021, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/jballerina.java;
import ballerinax/googleapis.gmail as gmail;

isolated function callOnNewEmail(SimpleHttpService httpService, gmail:Message message) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

isolated function callOnNewThread(SimpleHttpService httpService, gmail:MailThread thread) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

isolated function callOnEmailLabelAdded(SimpleHttpService httpService, ChangedLabel changedLabel) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

isolated function callOnEmailStarred(SimpleHttpService httpService, gmail:Message message) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

isolated function callOnEmailLabelRemoved(SimpleHttpService httpService, ChangedLabel changedLabel) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

isolated function callOnEmailStarRemoved(SimpleHttpService httpService, gmail:Message message) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

isolated function callOnNewAttachment(SimpleHttpService httpService, MailAttachment attachment) returns error?
    = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;

# Invoke native method to retrive implemented method names in the subscriber service
#
# + httpService - current http service
# + return - {@code string[]} containing the method-names in current implementation
isolated function getServiceMethodNames(SimpleHttpService httpService) returns string[] = @java:Method {
    'class: "org.ballerinalang.googleapis.gmail.HttpNativeOperationHandler"
} external;
