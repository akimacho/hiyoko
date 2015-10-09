require 'hiyoko/tmpl'

class ProjectPbxproj < Tmpl
  @code =<<"EOS"
// !$*UTF8*$!
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 46;
	objects = {

/* Begin PBXBuildFile section */
		D2B401851BC2B32E0063EF1D /* AppDelegate.swift in Sources */ = {isa = PBXBuildFile; fileRef = D2B401841BC2B32E0063EF1D /* AppDelegate.swift */; };
		D2B401871BC2B32E0063EF1D /* ViewController.swift in Sources */ = {isa = PBXBuildFile; fileRef = D2B401861BC2B32E0063EF1D /* ViewController.swift */; };
		D2B4018A1BC2B32E0063EF1D /* Main.storyboard in Resources */ = {isa = PBXBuildFile; fileRef = D2B401881BC2B32E0063EF1D /* Main.storyboard */; };
		D2B4018C1BC2B32E0063EF1D /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = D2B4018B1BC2B32E0063EF1D /* Assets.xcassets */; };
		D2B4018F1BC2B32E0063EF1D /* LaunchScreen.storyboard in Resources */ = {isa = PBXBuildFile; fileRef = D2B4018D1BC2B32E0063EF1D /* LaunchScreen.storyboard */; };
/* End PBXBuildFile section */

/* Begin PBXFileReference section */
		D2B401811BC2B32E0063EF1D /* <%= project_name %>.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = <%= project_name %>.app; sourceTree = BUILT_PRODUCTS_DIR; };
		D2B401841BC2B32E0063EF1D /* AppDelegate.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppDelegate.swift; sourceTree = "<group>"; };
		D2B401861BC2B32E0063EF1D /* ViewController.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ViewController.swift; sourceTree = "<group>"; };
		D2B401891BC2B32E0063EF1D /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.storyboard; name = Base; path = Base.lproj/Main.storyboard; sourceTree = "<group>"; };
		D2B4018B1BC2B32E0063EF1D /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };
		D2B4018E1BC2B32E0063EF1D /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.storyboard; name = Base; path = Base.lproj/LaunchScreen.storyboard; sourceTree = "<group>"; };
		D2B401901BC2B32E0063EF1D /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Info.plist; sourceTree = "<group>"; };
/* End PBXFileReference section */

/* Begin PBXFrameworksBuildPhase section */
		D2B4017E1BC2B32E0063EF1D /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXFrameworksBuildPhase section */

/* Begin PBXGroup section */
		D2B401781BC2B32E0063EF1D = {
			isa = PBXGroup;
			children = (
				D2B401831BC2B32E0063EF1D /* <%= project_name %> */,
				D2B401821BC2B32E0063EF1D /* Products */,
			);
			sourceTree = "<group>";
		};
		D2B401821BC2B32E0063EF1D /* Products */ = {
			isa = PBXGroup;
			children = (
				D2B401811BC2B32E0063EF1D /* <%= project_name %>.app */,
			);
			name = Products;
			sourceTree = "<group>";
		};
		D2B401831BC2B32E0063EF1D /* <%= project_name %> */ = {
			isa = PBXGroup;
			children = (
				D2B401841BC2B32E0063EF1D /* AppDelegate.swift */,
				D2B401861BC2B32E0063EF1D /* ViewController.swift */,
				D2B401881BC2B32E0063EF1D /* Main.storyboard */,
				D2B4018B1BC2B32E0063EF1D /* Assets.xcassets */,
				D2B4018D1BC2B32E0063EF1D /* LaunchScreen.storyboard */,
				D2B401901BC2B32E0063EF1D /* Info.plist */,
			);
			path = <%= project_name %>;
			sourceTree = "<group>";
		};
/* End PBXGroup section */

/* Begin PBXNativeTarget section */
		D2B401801BC2B32E0063EF1D /* <%= project_name %> */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = D2B401931BC2B32E0063EF1D /* Build configuration list for PBXNativeTarget "<%= project_name %>" */;
			buildPhases = (
				D2B4017D1BC2B32E0063EF1D /* Sources */,
				D2B4017E1BC2B32E0063EF1D /* Frameworks */,
				D2B4017F1BC2B32E0063EF1D /* Resources */,
			);
			buildRules = (
			);
			dependencies = (
			);
			name = <%= project_name %>;
			productName = <%= project_name %>;
			productReference = D2B401811BC2B32E0063EF1D /* <%= project_name %>.app */;
			productType = "com.apple.product-type.application";
		};
/* End PBXNativeTarget section */

/* Begin PBXProject section */
		D2B401791BC2B32E0063EF1D /* Project object */ = {
			isa = PBXProject;
			attributes = {
				LastUpgradeCheck = 0700;
				ORGANIZATIONNAME = <%= project_name %>;
				TargetAttributes = {
					D2B401801BC2B32E0063EF1D = {
						CreatedOnToolsVersion = 7.0.1;
					};
				};
			};
			buildConfigurationList = D2B4017C1BC2B32E0063EF1D /* Build configuration list for PBXProject "<%= project_name %>" */;
			compatibilityVersion = "Xcode 3.2";
			developmentRegion = English;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = D2B401781BC2B32E0063EF1D;
			productRefGroup = D2B401821BC2B32E0063EF1D /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				D2B401801BC2B32E0063EF1D /* <%= project_name %> */,
			);
		};
/* End PBXProject section */

/* Begin PBXResourcesBuildPhase section */
		D2B4017F1BC2B32E0063EF1D /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				D2B4018F1BC2B32E0063EF1D /* LaunchScreen.storyboard in Resources */,
				D2B4018C1BC2B32E0063EF1D /* Assets.xcassets in Resources */,
				D2B4018A1BC2B32E0063EF1D /* Main.storyboard in Resources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXResourcesBuildPhase section */

/* Begin PBXSourcesBuildPhase section */
		D2B4017D1BC2B32E0063EF1D /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				D2B401871BC2B32E0063EF1D /* ViewController.swift in Sources */,
				D2B401851BC2B32E0063EF1D /* AppDelegate.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXSourcesBuildPhase section */

/* Begin PBXVariantGroup section */
		D2B401881BC2B32E0063EF1D /* Main.storyboard */ = {
			isa = PBXVariantGroup;
			children = (
				D2B401891BC2B32E0063EF1D /* Base */,
			);
			name = Main.storyboard;
			sourceTree = "<group>";
		};
		D2B4018D1BC2B32E0063EF1D /* LaunchScreen.storyboard */ = {
			isa = PBXVariantGroup;
			children = (
				D2B4018E1BC2B32E0063EF1D /* Base */,
			);
			name = LaunchScreen.storyboard;
			sourceTree = "<group>";
		};
/* End PBXVariantGroup section */

/* Begin XCBuildConfiguration section */
		D2B401911BC2B32E0063EF1D /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				GCC_C_LANGUAGE_STANDARD = gnu99;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"$(inherited)",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 9.0;
				MTL_ENABLE_DEBUG_INFO = YES;
				ONLY_ACTIVE_ARCH = YES;
				SDKROOT = iphoneos;
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
				TARGETED_DEVICE_FAMILY = "1,2";
			};
			name = Debug;
		};
		D2B401921BC2B32E0063EF1D /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				GCC_C_LANGUAGE_STANDARD = gnu99;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 9.0;
				MTL_ENABLE_DEBUG_INFO = NO;
				SDKROOT = iphoneos;
				TARGETED_DEVICE_FAMILY = "1,2";
				VALIDATE_PRODUCT = YES;
			};
			name = Release;
		};
		D2B401941BC2B32E0063EF1D /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				INFOPLIST_FILE = <%= project_name %>/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = "$(inherited) @executable_path/Frameworks";
				PRODUCT_BUNDLE_IDENTIFIER = <%= project_name %>.<%= project_name %>;
				PRODUCT_NAME = "$(TARGET_NAME)";
			};
			name = Debug;
		};
		D2B401951BC2B32E0063EF1D /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				INFOPLIST_FILE = <%= project_name %>/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = "$(inherited) @executable_path/Frameworks";
				PRODUCT_BUNDLE_IDENTIFIER = <%= project_name %>.<%= project_name %>;
				PRODUCT_NAME = "$(TARGET_NAME)";
			};
			name = Release;
		};
/* End XCBuildConfiguration section */

/* Begin XCConfigurationList section */
		D2B4017C1BC2B32E0063EF1D /* Build configuration list for PBXProject "<%= project_name %>" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				D2B401911BC2B32E0063EF1D /* Debug */,
				D2B401921BC2B32E0063EF1D /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		D2B401931BC2B32E0063EF1D /* Build configuration list for PBXNativeTarget "<%= project_name %>" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				D2B401941BC2B32E0063EF1D /* Debug */,
				D2B401951BC2B32E0063EF1D /* Release */,
			);
			defaultConfigurationIsVisible = 0;
		};
/* End XCConfigurationList section */
	};
	rootObject = D2B401791BC2B32E0063EF1D /* Project object */;
}

EOS
end
