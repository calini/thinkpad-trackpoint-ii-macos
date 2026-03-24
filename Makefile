PLIST_NAME = com.lenovo.ThinkPadTrackPointII.keymapping.plist
PLIST_SRC  = $(PLIST_NAME)
PLIST_DST  = /Library/LaunchDaemons/$(PLIST_NAME)

.PHONY: install uninstall grant-input-monitoring

install:
	sudo cp $(PLIST_SRC) $(PLIST_DST)
	sudo chmod 644 $(PLIST_DST)
	sudo chown root:wheel $(PLIST_DST)
	sudo launchctl bootstrap system $(PLIST_DST)

uninstall:
	sudo launchctl bootout system $(PLIST_DST) || true
	sudo rm -f $(PLIST_DST)

grant-input-monitoring:
	open "x-apple.systempreferences:com.apple.preference.security?Privacy_ListenEvent"
	@echo "In the Input Monitoring pane:"
	@echo "  1. Click '+'"
	@echo "  2. Press Cmd+Shift+G and type: /usr/bin/hidutil"
	@echo "  3. Click Open, then enable the toggle next to hidutil"