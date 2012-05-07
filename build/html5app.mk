##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=html5app
ConfigurationName      :=Debug
IntermediateDirectory  :=obj/Debug/html5app
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
OutputFile             :=html5app
Preprocessors          :=$(PreprocessorSwitch)DEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="/home/evilissimo/projects/libs/html5/build/html5app.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
CmpOptions             := -g -std=c++0x $(Preprocessors)
C_CmpOptions           := -g -std=c++0x $(Preprocessors)
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)../include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)html5 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/app_html5_app$(ObjectSuffix) 

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

$(IntermediateDirectory)/.d:
	@test -d obj/Debug/html5app || $(MakeDirCommand) obj/Debug/html5app

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/app_html5_app$(ObjectSuffix): ../app/html5_app.cc $(IntermediateDirectory)/app_html5_app$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "/home/evilissimo/projects/libs/html5/app/html5_app.cc" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/app_html5_app$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/app_html5_app$(DependSuffix): ../app/html5_app.cc
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/app_html5_app$(ObjectSuffix) -MF$(IntermediateDirectory)/app_html5_app$(DependSuffix) -MM "/home/evilissimo/projects/libs/html5/app/html5_app.cc"

$(IntermediateDirectory)/app_html5_app$(PreprocessSuffix): ../app/html5_app.cc
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/app_html5_app$(PreprocessSuffix) "/home/evilissimo/projects/libs/html5/app/html5_app.cc"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/app_html5_app$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/app_html5_app$(DependSuffix)
	$(RM) $(IntermediateDirectory)/app_html5_app$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/evilissimo/projects/libs/html5/build/.build-debug/html5app"


