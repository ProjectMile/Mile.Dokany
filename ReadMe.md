# Mile.Dokany

[![NuGet Package](https://img.shields.io/nuget/vpre/Mile.Dokany)](https://www.nuget.org/packages/Mile.Dokany)

The NuGet integration package version of [Dokany].

[Dokany]: https://github.com/dokan-dev/dokany

## Features

- Inherited all features provided in the official Windows binaries from Dokany
  2.3.1.1000.
- Use [Mile.Windows.UniCrt](https://github.com/ProjectMile/Mile.Windows.UniCrt)
  toolchain to make the binary size smaller.
- Provide ARM64X and ARM64EC modes support for ARM64 targets.

## System Requirements

- Supported OS: Windows 10 Version 2004 (Build 19041) or later
- Supported Platforms: x86, x86-64(AMD64) and ARM64

Note: If you have put the ucrtbase.dll with 10.0.19041.0 version or later need
to be existed in the binary folder, the minimum system requirements of
Mile.Dokany is Windows Vista RTM (Build 6000) or later.

## Documents

- [License](License.md)
- [Release Notes](ReleaseNotes.md)
- [Versioning](Versioning.md)
