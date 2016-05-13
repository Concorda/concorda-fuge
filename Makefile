
PACKAGES=concorda concorda-dashboard

SERVICES=$(foreach service, $(PACKAGES), services/$(service))
MODULES=$(foreach module, $(PACKAGES), node_modules/$(module))

.PHONY: clean dev-setup update

$(SERVICES):
	-git clone git@github.com:Concorda/$(@F).git $@

$(MODULES): $(SERVICES)
	cd services/$(@F); npm link; cd ..
	npm link $(@F)

clean:
	rm -rf $(MODULES)
	rm -rf services

dev-setup: $(MODULES)
