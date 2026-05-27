# Minimal makefile for Sphinx documentation
# Additional Routines added for using the common code processes

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile countdown docs clean-all

# Customized behaviour reused same make file for automation 
# cleaning targets
clean-docs:
	@echo "Removing old documentation folders"
	@-rm -rf ./build
clean-build:
	@echo "Removing old wheel build"
	@-rm -rf ./dist
	@echo "Removing tolkapy.egg-info"
	@rm -rf ./tolkapy.egg-info
clean-cache:
	@echo "Removing old pycache folders"
	@-rm -rf ./*/__pycache__
clean-test:
	@echo "Removing text files in test directory"
	@-rm -rf ./tests/*.txt
clean-all: clean-docs clean-build clean-cache clean-test

lint : 
	@black tamilrulepy
# Documentation check before deploymenting a 
docs : 
	@make html
docs-verify : docs 
	@python3 -m http.server --directory ./build/html/

# Code side check before deployment a version to pypi 

# run entire unit test suit 
test: 
	@./unittest
# python wheel build 
wheel: test 
	@uv build --wheel
# wheel build check dry run for wheel build check
deploy_check: wheel
	@echo "\n\n"
	@twine check dist/*
	@twine upload --repository testpypi dist/*

# deployment to pypi 	
deploy_pypi: wheel deploy_check
	@echo "\n\n"
	@echo "Pushing New version to Pypi"   &&  @twine upload dist/*

# Countdown 
launch: countdown deploy_pypi
	@echo "\n\n"
	@echo "Launching docs version x to readthe docs"
# Countdown function
countdown:
	@echo "Starting upload in 10 seconds. Press Ctrl+C to cancel."
	@for i in 10 9 8 7 6 5 4 3 2 1; do \
		printf "$$i... \r"; \
		sleep 1; \
	done
# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
