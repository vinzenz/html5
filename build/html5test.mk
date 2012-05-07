##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=html5test
ConfigurationName      :=Debug
IntermediateDirectory  :=obj/Debug/html5test
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "/home/evilissimo/projects/libs/html5/build"
ProjectPath            := "/home/evilissimo/projects/libs/html5/build"
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Vinzenz Feenstra
Date                   :=05/07/2012
CodeLitePath           :="/home/evilissimo/.codelite"
LinkerName             :=g++
ArchiveTool            :=ar rcus
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
CompilerName           :=g++
C_CompilerName         :=gcc
OutputFile             :=html5test
Preprocessors          :=$(PreprocessorSwitch)DEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="/home/evilissimo/projects/libs/html5/build/html5test.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
CmpOptions             := -g -std=c++0x $(Preprocessors)
C_CmpOptions           := -g -std=c++0x $(Preprocessors)
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)../unittest $(IncludeSwitch)../include $(IncludeSwitch)../external/tut 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)html5 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	./html5test regression
	@echo Done

$(IntermediateDirectory)/.d:
	@test -d obj/Debug/html5test || $(MakeDirCommand) obj/Debug/html5test

PreBuild:


##
## Objects
##

-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(OutputFile)
	$(RM) "/home/evilissimo/projects/libs/html5/build/.build-debug/html5test"


