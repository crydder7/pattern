#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "itmo" asset catalog image resource.
static NSString * const ACImageNameItmo AC_SWIFT_PRIVATE = @"itmo";

/// The "leti" asset catalog image resource.
static NSString * const ACImageNameLeti AC_SWIFT_PRIVATE = @"leti";

/// The "spbau" asset catalog image resource.
static NSString * const ACImageNameSpbau AC_SWIFT_PRIVATE = @"spbau";

/// The "spbsti" asset catalog image resource.
static NSString * const ACImageNameSpbsti AC_SWIFT_PRIVATE = @"spbsti";

/// The "spbstu" asset catalog image resource.
static NSString * const ACImageNameSpbstu AC_SWIFT_PRIVATE = @"spbstu";

/// The "spbsu" asset catalog image resource.
static NSString * const ACImageNameSpbsu AC_SWIFT_PRIVATE = @"spbsu";

/// The "suai" asset catalog image resource.
static NSString * const ACImageNameSuai AC_SWIFT_PRIVATE = @"suai";

#undef AC_SWIFT_PRIVATE
