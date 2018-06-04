install: fossPrj_tui-te.mo
	install fossPrj fossPrj_tui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat fossPrj.services`" /etc/services || cat fossPrj.services >> /etc/services
	install fossPrj.xinetd /etc/xinetd.d/fossPrj
	ln -sf /usr/local/bin/fossPrj_tui /usr/local/bin/fossPrj_net
	ln -sf /usr/local/bin/fossPrj_tui /usr/local/bin/fossPrj_gui
	install fossPrj_tui-te.mo /usr/share/locale/te/LC_MESSAGES/fossPrj_ui.mo

fossPrj_tui.pot: fossPrj_tui
	xgettext -o fossPrj_tui.pot -L Shell fossPrj_tui

fossPrj_tui-te.mo: fossPrj_tui-te.po
	msgfmt -o fossPrj_tui-te.mo fossPrj_tui-te.po

clone:
	git clone https://github.com/krishhteja/fossProject.git

download:
	git pull

upload:
	git add .
	git commit -a
	git push origin 

tags:
	git push origin --tags
