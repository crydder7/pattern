import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "itmo" asset catalog image resource.
    static let itmo = DeveloperToolsSupport.ImageResource(name: "itmo", bundle: resourceBundle)

    /// The "leti" asset catalog image resource.
    static let leti = DeveloperToolsSupport.ImageResource(name: "leti", bundle: resourceBundle)

    /// The "spbau" asset catalog image resource.
    static let spbau = DeveloperToolsSupport.ImageResource(name: "spbau", bundle: resourceBundle)

    /// The "spbsti" asset catalog image resource.
    static let spbsti = DeveloperToolsSupport.ImageResource(name: "spbsti", bundle: resourceBundle)

    /// The "spbstu" asset catalog image resource.
    static let spbstu = DeveloperToolsSupport.ImageResource(name: "spbstu", bundle: resourceBundle)

    /// The "spbsu" asset catalog image resource.
    static let spbsu = DeveloperToolsSupport.ImageResource(name: "spbsu", bundle: resourceBundle)

    /// The "suai" asset catalog image resource.
    static let suai = DeveloperToolsSupport.ImageResource(name: "suai", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "itmo" asset catalog image.
    static var itmo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .itmo)
#else
        .init()
#endif
    }

    /// The "leti" asset catalog image.
    static var leti: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .leti)
#else
        .init()
#endif
    }

    /// The "spbau" asset catalog image.
    static var spbau: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .spbau)
#else
        .init()
#endif
    }

    /// The "spbsti" asset catalog image.
    static var spbsti: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .spbsti)
#else
        .init()
#endif
    }

    /// The "spbstu" asset catalog image.
    static var spbstu: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .spbstu)
#else
        .init()
#endif
    }

    /// The "spbsu" asset catalog image.
    static var spbsu: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .spbsu)
#else
        .init()
#endif
    }

    /// The "suai" asset catalog image.
    static var suai: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .suai)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "itmo" asset catalog image.
    static var itmo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .itmo)
#else
        .init()
#endif
    }

    /// The "leti" asset catalog image.
    static var leti: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .leti)
#else
        .init()
#endif
    }

    /// The "spbau" asset catalog image.
    static var spbau: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .spbau)
#else
        .init()
#endif
    }

    /// The "spbsti" asset catalog image.
    static var spbsti: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .spbsti)
#else
        .init()
#endif
    }

    /// The "spbstu" asset catalog image.
    static var spbstu: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .spbstu)
#else
        .init()
#endif
    }

    /// The "spbsu" asset catalog image.
    static var spbsu: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .spbsu)
#else
        .init()
#endif
    }

    /// The "suai" asset catalog image.
    static var suai: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .suai)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

