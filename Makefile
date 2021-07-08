link:
	ln -sf  $(PWD)/keyboards/planck/keymaps/BetterKeymap/ ~/qmk_firmware/keyboards/planck/keymaps/ 
	ln -sf $(PWD)/keyboards/1upkeyboards/1up60hse/keymaps/UsableKeymap/ ~/qmk_firmware/keyboards/1upkeyboards/1up60hse/keymaps/
unlink:
	unlink ~/qmk_firmware/keyboards/1upkeyboards/1up60hse/keymaps/UsableKeymap
	unlink ~/qmk_firmware/keyboards/planck/keymaps/BetterKeymap
planck:
	echo this this this this this
	qmk flash -kb planck/rev6 -km BetterKeymap
1up60hse:
	qmk flash -kb 1upkeyboards/1up60hse -km UsableKeymap
