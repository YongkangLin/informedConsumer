/*
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/firestore/v1beta1/write.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#include <libkern/OSAtomic.h>
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/Timestamp.pbobjc.h>
#else
 #import "Timestamp.pbobjc.h"
#endif

 #import "Write.pbobjc.h"
 #import "Annotations.pbobjc.h"
 #import "Common.pbobjc.h"
 #import "Document.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - GCFSWriteRoot

@implementation GCFSWriteRoot


@end

#pragma mark - GCFSWriteRoot_FileDescriptor

static GPBFileDescriptor *GCFSWriteRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.firestore.v1beta1"
                                                 objcPrefix:@"GCFS"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GCFSWrite

@implementation GCFSWrite

@dynamic operationOneOfCase;
@dynamic update;
@dynamic delete_p;
@dynamic transform;
@dynamic hasUpdateMask, updateMask;
@dynamic hasCurrentDocument, currentDocument;

typedef struct GCFSWrite__storage_ {
  uint32_t _has_storage_[2];
  GCFSDocument *update;
  NSString *delete_p;
  GCFSDocumentMask *updateMask;
  GCFSPrecondition *currentDocument;
  GCFSDocumentTransform *transform;
} GCFSWrite__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "update",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSDocument),
        .number = GCFSWrite_FieldNumber_Update,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSWrite__storage_, update),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "delete_p",
        .dataTypeSpecific.className = NULL,
        .number = GCFSWrite_FieldNumber_Delete_p,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSWrite__storage_, delete_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "updateMask",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSDocumentMask),
        .number = GCFSWrite_FieldNumber_UpdateMask,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSWrite__storage_, updateMask),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "currentDocument",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSPrecondition),
        .number = GCFSWrite_FieldNumber_CurrentDocument,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GCFSWrite__storage_, currentDocument),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "transform",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSDocumentTransform),
        .number = GCFSWrite_FieldNumber_Transform,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSWrite__storage_, transform),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSWrite class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSWrite__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "operation",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void GCFSWrite_ClearOperationOneOfCase(GCFSWrite *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GCFSDocumentTransform

@implementation GCFSDocumentTransform

@dynamic document;
@dynamic fieldTransformsArray, fieldTransformsArray_Count;

typedef struct GCFSDocumentTransform__storage_ {
  uint32_t _has_storage_[1];
  NSString *document;
  NSMutableArray *fieldTransformsArray;
} GCFSDocumentTransform__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "document",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentTransform_FieldNumber_Document,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSDocumentTransform__storage_, document),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fieldTransformsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSDocumentTransform_FieldTransform),
        .number = GCFSDocumentTransform_FieldNumber_FieldTransformsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocumentTransform__storage_, fieldTransformsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocumentTransform class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocumentTransform__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSDocumentTransform_FieldTransform

@implementation GCFSDocumentTransform_FieldTransform

@dynamic transformTypeOneOfCase;
@dynamic fieldPath;
@dynamic setToServerValue;
@dynamic appendMissingElements;
@dynamic removeAllFromArray_p;

typedef struct GCFSDocumentTransform_FieldTransform__storage_ {
  uint32_t _has_storage_[2];
  GCFSDocumentTransform_FieldTransform_ServerValue setToServerValue;
  NSString *fieldPath;
  GCFSArrayValue *appendMissingElements;
  GCFSArrayValue *removeAllFromArray_p;
} GCFSDocumentTransform_FieldTransform__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fieldPath",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentTransform_FieldTransform_FieldNumber_FieldPath,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSDocumentTransform_FieldTransform__storage_, fieldPath),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "setToServerValue",
        .dataTypeSpecific.enumDescFunc = GCFSDocumentTransform_FieldTransform_ServerValue_EnumDescriptor,
        .number = GCFSDocumentTransform_FieldTransform_FieldNumber_SetToServerValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSDocumentTransform_FieldTransform__storage_, setToServerValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "appendMissingElements",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSArrayValue),
        .number = GCFSDocumentTransform_FieldTransform_FieldNumber_AppendMissingElements,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSDocumentTransform_FieldTransform__storage_, appendMissingElements),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "removeAllFromArray_p",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSArrayValue),
        .number = GCFSDocumentTransform_FieldTransform_FieldNumber_RemoveAllFromArray_p,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSDocumentTransform_FieldTransform__storage_, removeAllFromArray_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocumentTransform_FieldTransform class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocumentTransform_FieldTransform__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "transformType",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GCFSDocumentTransform)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GCFSDocumentTransform_FieldTransform_SetToServerValue_RawValue(GCFSDocumentTransform_FieldTransform *message) {
  GPBDescriptor *descriptor = [GCFSDocumentTransform_FieldTransform descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GCFSDocumentTransform_FieldTransform_FieldNumber_SetToServerValue];
  return GPBGetMessageInt32Field(message, field);
}

void SetGCFSDocumentTransform_FieldTransform_SetToServerValue_RawValue(GCFSDocumentTransform_FieldTransform *message, int32_t value) {
  GPBDescriptor *descriptor = [GCFSDocumentTransform_FieldTransform descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GCFSDocumentTransform_FieldTransform_FieldNumber_SetToServerValue];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

void GCFSDocumentTransform_FieldTransform_ClearTransformTypeOneOfCase(GCFSDocumentTransform_FieldTransform *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - Enum GCFSDocumentTransform_FieldTransform_ServerValue

GPBEnumDescriptor *GCFSDocumentTransform_FieldTransform_ServerValue_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "ServerValueUnspecified\000RequestTime\000";
    static const int32_t values[] = {
        GCFSDocumentTransform_FieldTransform_ServerValue_ServerValueUnspecified,
        GCFSDocumentTransform_FieldTransform_ServerValue_RequestTime,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GCFSDocumentTransform_FieldTransform_ServerValue)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GCFSDocumentTransform_FieldTransform_ServerValue_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GCFSDocumentTransform_FieldTransform_ServerValue_IsValidValue(int32_t value__) {
  switch (value__) {
    case GCFSDocumentTransform_FieldTransform_ServerValue_ServerValueUnspecified:
    case GCFSDocumentTransform_FieldTransform_ServerValue_RequestTime:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - GCFSWriteResult

@implementation GCFSWriteResult

@dynamic hasUpdateTime, updateTime;
@dynamic transformResultsArray, transformResultsArray_Count;

typedef struct GCFSWriteResult__storage_ {
  uint32_t _has_storage_[1];
  GPBTimestamp *updateTime;
  NSMutableArray *transformResultsArray;
} GCFSWriteResult__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "updateTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSWriteResult_FieldNumber_UpdateTime,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSWriteResult__storage_, updateTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "transformResultsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSValue),
        .number = GCFSWriteResult_FieldNumber_TransformResultsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSWriteResult__storage_, transformResultsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSWriteResult class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSWriteResult__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSDocumentChange

@implementation GCFSDocumentChange

@dynamic hasDocument, document;
@dynamic targetIdsArray, targetIdsArray_Count;
@dynamic removedTargetIdsArray, removedTargetIdsArray_Count;

typedef struct GCFSDocumentChange__storage_ {
  uint32_t _has_storage_[1];
  GCFSDocument *document;
  GPBInt32Array *targetIdsArray;
  GPBInt32Array *removedTargetIdsArray;
} GCFSDocumentChange__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "document",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSDocument),
        .number = GCFSDocumentChange_FieldNumber_Document,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSDocumentChange__storage_, document),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "targetIdsArray",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentChange_FieldNumber_TargetIdsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocumentChange__storage_, targetIdsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "removedTargetIdsArray",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentChange_FieldNumber_RemovedTargetIdsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocumentChange__storage_, removedTargetIdsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocumentChange class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocumentChange__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSDocumentDelete

@implementation GCFSDocumentDelete

@dynamic document;
@dynamic removedTargetIdsArray, removedTargetIdsArray_Count;
@dynamic hasReadTime, readTime;

typedef struct GCFSDocumentDelete__storage_ {
  uint32_t _has_storage_[1];
  NSString *document;
  GPBTimestamp *readTime;
  GPBInt32Array *removedTargetIdsArray;
} GCFSDocumentDelete__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "document",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentDelete_FieldNumber_Document,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSDocumentDelete__storage_, document),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "readTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSDocumentDelete_FieldNumber_ReadTime,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GCFSDocumentDelete__storage_, readTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "removedTargetIdsArray",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentDelete_FieldNumber_RemovedTargetIdsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocumentDelete__storage_, removedTargetIdsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocumentDelete class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocumentDelete__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSDocumentRemove

@implementation GCFSDocumentRemove

@dynamic document;
@dynamic removedTargetIdsArray, removedTargetIdsArray_Count;
@dynamic hasReadTime, readTime;

typedef struct GCFSDocumentRemove__storage_ {
  uint32_t _has_storage_[1];
  NSString *document;
  GPBInt32Array *removedTargetIdsArray;
  GPBTimestamp *readTime;
} GCFSDocumentRemove__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "document",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentRemove_FieldNumber_Document,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSDocumentRemove__storage_, document),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "removedTargetIdsArray",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocumentRemove_FieldNumber_RemovedTargetIdsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocumentRemove__storage_, removedTargetIdsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "readTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSDocumentRemove_FieldNumber_ReadTime,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GCFSDocumentRemove__storage_, readTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocumentRemove class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocumentRemove__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSExistenceFilter

@implementation GCFSExistenceFilter

@dynamic targetId;
@dynamic count;

typedef struct GCFSExistenceFilter__storage_ {
  uint32_t _has_storage_[1];
  int32_t targetId;
  int32_t count;
} GCFSExistenceFilter__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "targetId",
        .dataTypeSpecific.className = NULL,
        .number = GCFSExistenceFilter_FieldNumber_TargetId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSExistenceFilter__storage_, targetId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "count",
        .dataTypeSpecific.className = NULL,
        .number = GCFSExistenceFilter_FieldNumber_Count,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GCFSExistenceFilter__storage_, count),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSExistenceFilter class]
                                     rootClass:[GCFSWriteRoot class]
                                          file:GCFSWriteRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSExistenceFilter__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
