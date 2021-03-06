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

#import "EMTagCommand.h"

NS_ASSUME_NONNULL_BEGIN

@implementation EMTagCommand

- (NSArray<EMErrorParameter *> *)validate {
    NSMutableArray<EMErrorParameter *> *ret =
    [NSMutableArray<EMErrorParameter *> array];
    if ([self.value length] == 0) {
        [ret addObject:[self emptyStringEMErr:@"tag" field:@"tag"]];
    }
    return ret;
}

@end

NS_ASSUME_NONNULL_END
