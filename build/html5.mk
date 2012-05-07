##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=html5
ConfigurationName      :=Debug
IntermediateDirectory  :=obj/Debug/html5
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
OutputFile             :=libhtml5.a
Preprocessors          :=$(PreprocessorSwitch)DEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="/home/evilissimo/projects/libs/html5/build/html5.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
CmpOptions             := -g -std=c++0x $(Preprocessors)
C_CmpOptions           := -g -std=c++0x $(Preprocessors)
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)../include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
LibPath                := $(LibraryPathSwitch). 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/source_application$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(IntermediateDirectory) $(OutputFile)

$(OutputFile): $(Objects)
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(ArchiveTool) $(ArchiveOutputSwitch)$(OutputFile) @$(ObjectsFileList)
	@$(MakeDirCommand) "/home/evilissimo/projects/libs/html5/build/.build-debug"
	@echo rebuilt > "/home/evilissimo/projects/libs/html5/build/.build-debug/html5"

obj/Debug/html5:
	@test -d obj/Debug/html5 || $(MakeDirCommand) obj/Debug/html5

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/source_application$(ObjectSuffix): ../source/application.cc $(IntermediateDirectory)/source_application$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "/home/evilissimo/projects/libs/html5/source/application.cc" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/source_application$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/source_application$(DependSuffix): ../source/application.cc
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/source_application$(ObjectSuffix) -MF$(IntermediateDirectory)/source_application$(DependSuffix) -MM "/home/evilissimo/projects/libs/html5/source/application.cc"

$(IntermediateDirectory)/source_application$(PreprocessSuffix): ../source/application.cc
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/source_application$(PreprocessSuffix) "/home/evilissimo/projects/libs/html5/source/application.cc"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/source_application$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/source_application$(DependSuffix)
	$(RM) $(IntermediateDirectory)/source_application$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/evilissimo/projects/libs/html5/build/.build-debug/html5"


