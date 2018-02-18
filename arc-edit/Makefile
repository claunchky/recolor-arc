ROOT_DIR=${PWD}
INSTALL_DIR=$(DESTDIR)/usr/share/themes/Planaro
GNOME_DIR=data/gnome-shell
GTK2_DIR=data/gtk-2.0
GTK3_DIR=data/gtk-3.0
XFWM4_DIR=data/xfwm4

all: clean gresource

clean:
	rm -f $(GNOME_DIR)/gnome-shell.css
	rm -f $(GTK3_DIR)/gtk.gresource
	rm -f $(GTK3_DIR)/gtk-contained.css
	rm -f $(GTK3_DIR)/gtk-contained-dark.css

css:
	sh parse-sass.sh

assets:
	sh render-assets.sh

gresource: css assets
	sh compile-gresource-binary.sh

install: all
	mkdir -p $(INSTALL_DIR)
	cp data/index.theme $(INSTALL_DIR)
	mkdir -p $(INSTALL_DIR)/gnome-shell
	cd $(GNOME_DIR) && cp -rf \
		assets \
		gnome-shell.css \
		$(INSTALL_DIR)/gnome-shell
	mkdir -p $(INSTALL_DIR)/gtk-2.0
	cd $(GTK2_DIR) && cp -rf \
		assets \
		stylesheets/* \
		$(INSTALL_DIR)/gtk-2.0
	mkdir -p $(INSTALL_DIR)/gtk-3.0
	cd $(GTK3_DIR) && cp -f \
		gtk.gresource \
		gtk.css \
		gtk-dark.css \
		$(INSTALL_DIR)/gtk-3.0
	mkdir -p $(INSTALL_DIR)/xfwm4
	cd $(XFWM4_DIR) && cp -rf \
		assets/* \
		stylesheets/* \
		$(INSTALL_DIR)/xfwm4

uninstall: clean
	rm -rf $(INSTALL_DIR)


