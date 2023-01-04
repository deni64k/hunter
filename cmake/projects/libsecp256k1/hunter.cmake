include(hunter_add_version)
include(hunter_default_version)
include(hunter_configuration_types)
include(hunter_pick_scheme)
include(hunter_download)
include(hunter_cacheable)
include(hunter_cmake_args)

hunter_add_version(
  PACKAGE_NAME libsecp256k1
  VERSION "0.2.0"
  URL "https://github.com/bitcoin-core/secp256k1/archive/refs/tags/v0.2.0.tar.gz"
  SHA1 6eb3b1a87a129e7ce0af774cf7e5acb0312c2d64
)

hunter_cmake_args(
  libsecp256k1
  CMAKE_ARGS
    PKGCONFIG_EXPORT_TARGETS=libsecp256k1
)

hunter_configuration_types(libsecp256k1 CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autogen_autotools)
hunter_cacheable(libsecp256k1)
hunter_download(
  PACKAGE_NAME libsecp256k1
  PACKAGE_INTERNAL_DEPS_ID "1"  # Increment for each new pull request
  PACKAGE_UNRELOCATABLE_TEXT_FILES lib/pkgconfig/libsecp256k1.pc)
