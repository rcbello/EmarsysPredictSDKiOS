/*
 * Copyright 2016 Scarab Research Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "EMErrorParameter.h"

NS_ASSUME_NONNULL_BEGIN

@implementation EMErrorParameter

- (instancetype)initWithType:(NSString *)type
                     command:(NSString *)command
                     message:(NSString *)message {
    self = [super init];
    if (self) {
        _type = type;
        _command = command;
        _message = message;
    }
    return self;
}

- (NSString *)description {
    NSMutableString *ret = [[NSMutableString alloc] init];
    [ret appendString:@"{\"t\":\""];
    [ret appendString:_type];
    [ret appendString:@"\",\"c\":\""];
    [ret appendString:_command];
    [ret appendString:@"\",\"m\":\""];
    [ret appendString:_message];
    [ret appendString:@"\"}"];
    return ret;
}

@end

NS_ASSUME_NONNULL_END
