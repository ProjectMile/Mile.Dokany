﻿# Mile.Dokany Versioning

This document applies to all versions of Mile.Dokany.

## Version Format

- Simple Version: `<Major>.<Minor> <Tag>`
  - Example: `9.0 Preview 1`
- Binary Version: `<Major>.<Minor>.<Build>.<Revision>`
  - Example: `9.0.2654.0`

## The rule for build and revision number

The build number is the number of days since August 7, 2023 because that day I
added the Dokany to implement the Mile.Cirno.

The revision number is the number of releases releases in the day corresponding
to the build number, and it counts from zero. So the first revision is 0 and 
the second revision is 1.
