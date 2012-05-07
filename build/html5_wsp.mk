.PHONY: clean All

All:
	@echo ----------Building project:[ html5test - Debug ]----------
	@"$(MAKE)" -f "html5test.mk" && "$(MAKE)" -f "html5test.mk" PostBuild
clean:
	@echo ----------Cleaning project:[ html5test - Debug ]----------
	@"$(MAKE)" -f "html5test.mk" clean
