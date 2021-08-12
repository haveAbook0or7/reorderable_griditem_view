#import "ReorderableGriditemViewPlugin.h"
#if __has_include(<reorderable_griditem_view/reorderable_griditem_view-Swift.h>)
#import <reorderable_griditem_view/reorderable_griditem_view-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "reorderable_griditem_view-Swift.h"
#endif

@implementation ReorderableGriditemViewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftReorderableGriditemViewPlugin registerWithRegistrar:registrar];
}
@end
