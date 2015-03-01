###########################################################################/**
# @RdocDocumentation "Non-documented objects"
#
# % The Arguments class
# @alias getCharacter
# @alias getCharacters
# @alias getDirectory
# @alias getDouble
# @alias getDoubles
# @alias getIndex
# @alias getIndices
# @alias getInteger
# @alias getIntegers
# @alias getLogical
# @alias getLogicals
# @alias getNumeric
# @alias getNumerics
# @alias getVector
# @alias getVerbose
# @alias getFilename
# @alias getReadablePathname
# @alias getReadablePathnames
# @alias getWritablePathname
# @alias inherits
# @alias inherits.default
# @alias getReadablePath
# @alias getRegularExpression
# @alias getWritablePath
# % Devel methods
# @alias getInstanceOf
# @alias getDirectory.Arguments
# @alias getReadablePath.Arguments
# @alias getWritablePath.Arguments
#
# % The Assert class
# @alias isMatrix
# @alias isScalar
# @alias isVector
#
# % The CmdArgsFunction class
# @alias CmdArgsFunction
# @alias print.CmdArgsFunction
#
# % The connection class
# @alias isEof
#
# % The GenericSummary class
# @alias GenericSummary
# @alias [.GenericSummary
# @alias c.GenericSummary
# @alias print.GenericSummary
#
# % The GString class
# @alias getBuiltinDate
# @alias getBuiltinDatetime
# @alias getBuiltinHostname
# @alias getBuiltinOs
# @alias getBuiltinPid
# @alias getBuiltinRhome
# @alias getBuiltinRversion
# @alias getBuiltinTime
# @alias getBuiltinUsername
# @alias getRaw
# @alias getVariableValue
# @alias parse
# @alias parse.default
#
# % The Java class
# @alias asByte
# @alias asInt
# @alias asLong
# @alias asShort
# @alias readByte
# @alias readInt
# @alias readShort
# @alias readUTF
# @alias writeByte
# @alias writeInt
# @alias writeShort
# @alias writeUTF
#
# % The Options class
# @alias hasOption
# @alias getOption
# @alias getOption.default
# @alias getLeaves
# @alias nbrOfOptions
#
# % The ProgressBar and FileProgressBar classes
# @alias cleanup
# @alias getBarString
# @alias increase
# @alias isDone
# @alias reset
# @alias setMaxValue
# @alias setProgress
# @alias setStepLength
# @alias setTicks
# @alias setValue
#
# % The Settings class
# @alias findSettings
# @alias getLoadedPathname
# @alias isModified
# @alias loadAnywhere
# @alias saveAnywhere
# @alias promptAndSave
#
# % The System class
# @alias currentTimeMillis
# @alias findGhostscript
# @alias findGraphicsDevice
# @alias getHostname
# @alias getUsername
# @alias openBrowser
# @alias parseDebian
# @alias getMappedDrivesOnWindows
# @alias getMappedDrivesOnWindows.System
# @alias mapDriveOnWindows
# @alias mapDriveOnWindows.System
# @alias unmapDriveOnWindows
# @alias unmapDriveOnWindows.System
#
# % The System class
# @alias getLabel
# @alias setLabel
#
# % The TextStatusBar class
# @alias popMessage
# @alias setLabels
# @alias updateLabels
#
# % The Verbose class
# @alias capture
# @alias cat
# @alias cat.default
# @alias evaluate
# @alias enter
# @alias enterf
# @alias exit
# @alias popState
# @alias pushState
# @alias getThreshold
# @alias getVariable
# @alias header
# @alias isOn
# @alias isVisible
# @alias less
# @alias more
# @alias newline
# @alias on
# @alias off
# @alias ruler
# @alias setDefaultLevel
# @alias setThreshold
# @alias warnings
# @alias warnings.default
# @alias writeRaw
# @alias timestamp
# @alias getTimestampFormat
# @alias setTimestampFormat
# @alias timestamp.default
# @alias timestampOff
# @alias timestampOn
#
# % The SmartComments class
# @alias convertComment
# @alias reset
# @alias validate
#
# % The VComments class
# % <none>
#
# % Intervals
# @alias inAnyInterval
# @alias mapToIntervals
# @alias mergeIntervals
# @alias intervalsToSeq
#
# % Misc.
# @alias extract
# @alias isOpen
# @alias isOpen.default
# @alias remove.default
# @alias unwrap
# @alias verbose
# @alias withoutGString
# @alias wrap
# @alias whichVector
# @alias draw
# @alias swapXY
#
# % Private
# @alias toFileListTree
# @alias toFileListTree.character
# @alias pasteTree
# @alias pasteTree.FileListTree
# @alias cat.FileListTree
# @alias toAsciiRegExprPattern
# @alias toAsciiRegExprPattern.character
# @alias getCommonPrefix
# @alias mergeByCommonTails
# @alias splitByCommonTails
# @alias print.CapturedEvaluation
#
#
# \description{
#   This page contains aliases for all "non-documented" objects that
#   \code{R CMD check} detects in this package.
#
#   Almost all of them are \emph{generic} functions that have specific
#   document for the corresponding method coupled to a specific class.
#   Other functions are re-defined by \code{setMethodS3()} to
#   \emph{default} methods. Neither of these two classes are non-documented
#   in reality.
#   The rest are deprecated methods.
# }
#
# @author
#
# @keyword internal
#*/###########################################################################

############################################################################
# HISTORY:
# 2005-05-26
# o Created to please R CMD check.
############################################################################
