import Foundation
@preconcurrency import ProjectDescription
import DependencyPlugin
import ProjectTemplatePlugin

let project = Project.makeAppModule(
    name: "Networkings",
    bundleId: .appBundleID(name: ".Networkings"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        .Networking(implements: .DiContainer),
        .Networking(implements: .Service),
        .Networking(implements: .Model)
    ],
    sources: ["Sources/**"]
)
