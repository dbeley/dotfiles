//
//
//███████╗██╗██████╗ ███████╗███████╗ ██████╗ ██╗  ██╗
//██╔════╝██║██╔══██╗██╔════╝██╔════╝██╔═══██╗╚██╗██╔╝
//█████╗  ██║██████╔╝█████╗  █████╗  ██║   ██║ ╚███╔╝
//██╔══╝  ██║██╔══██╗██╔══╝  ██╔══╝  ██║   ██║ ██╔██╗
//██║     ██║██║  ██║███████╗██║     ╚██████╔╝██╔╝ ██╗
//╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝ ╚═╝  ╚═╝
//
// Mozilla User Preferences
//
// If you make changes to this file while the application is running,
// the changes will be overwritten when the application exits.
//
// To change a preference value, you can either:
// - modify it via the UI (e.g. via about:config in the browser); or
// - set it within a user.js file in your profile.

user_pref("browser.tabs.insertAfterCurrent", true);
user_pref("browser.search.context.loadInBackground", true);
user_pref("browser.tabs.loadBookmarksInBackground", true);
user_pref("browser.bookmarks.openInTabClosesMenu", false);
user_pref("browser.pocket.enabled",				false);
user_pref("extensions.pocket.enabled",				false);
user_pref("network.IDN_show_punycode",				true);
user_pref("browser.fullscreen.autohide", false);
user_pref("browser.urlbar.doubleClickSelectsAll", false);
user_pref("dom.ipc.processCount", -1);
user_pref("dom.event.clipboardevents.enabled", false);
user_pref("browser.urlbar.trimURLS", false);
