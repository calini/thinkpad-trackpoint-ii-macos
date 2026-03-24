PLIST_NAME = com.lenovo.ThinkPadTrackPointII.keymapping.plist
PLIST_SRC  = $(PLIST_NAME)
PLIST_DST  = /Library/LaunchDaemons/$(PLIST_NAME)

.PHONY: install uninstall

install:
	sudo cp $(PLIST_SRC) $(PLIST_DST)
	sudo chmod 644 $(PLIST_DST)
	sudo chown root:wheel $(PLIST_DST)
	sudo launchctl bootstrap system $(PLIST_DST)

uninstall:
	sudo launchctl bootout system $(PLIST_DST) || true
	sudo rm -f $(PLIST_DST)