# Make ~/.toys folder executable
export PATH="${PATH}:$HOME/.toys"

# Make ~/.utility folder executable
export PATH="${PATH}:$HOME/.utility"

export QT_QPA_PLATFORMTHEME="qt5ct"

if [ -n "$GTK_MODULES" ]; then
	    GTK_MODULES="appmenu-gtk-module:canberra-gtk-module"
    else
	        GTK_MODULES="appmenu-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]; then
	    UBUNTU_MENUPROXY=1
fi

export GTK_MODULES
export UBUNTU_MENUPROXY
