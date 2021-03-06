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


///******************************************************************************
// * SECTION: HTML5 / APIs / DOM                                                *
// ******************************************************************************/
user_pref("dom.serviceWorkers.enabled",				false);
user_pref("dom.webnotifications.enabled",			false);
user_pref("dom.enable_performance",				false);
user_pref("dom.enable_user_timing",				false);
user_pref("dom.webaudio.enabled",				false);
user_pref("dom.mozTCPSocket.enabled",				false);
user_pref("dom.netinfo.enabled",				false);
user_pref("dom.network.enabled",				false);
user_pref("dom.battery.enabled",				false);
user_pref("dom.telephony.enabled",				false);
user_pref("dom.gamepad.enabled",				false);
user_pref("dom.vr.enabled",					false);
user_pref("dom.vibrator.enabled",           false);
user_pref("dom.enable_resource_timing",				false);
user_pref("dom.archivereader.enabled",				false);
user_pref("dom.maxHardwareConcurrency",				32);
user_pref("dom.event.clipboardevents.enabled",			false);
user_pref("dom.allow_cut_copy", false);
user_pref("geo.enabled",					false);
//user_pref("geo.wifi.uri", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
user_pref("geo.wifi.logging.enabled", false);
user_pref("media.peerconnection.enabled",			false);
user_pref("media.peerconnection.ice.default_address_only",	true); // Firefox 42-51
user_pref("media.peerconnection.ice.no_host",			true); // Firefox >= 52
user_pref("media.navigator.enabled",				false);
user_pref("media.navigator.video.enabled",			false);
user_pref("media.getusermedia.screensharing.enabled",		false);
user_pref("media.getusermedia.audiocapture.enabled",		false);
user_pref("beacon.enabled",					false);
user_pref("media.webspeech.recognition.enable",			false);
user_pref("media.webspeech.synth.enabled",			false);
user_pref("device.sensors.enabled",				false);
user_pref("browser.send_pings",					false);
user_pref("browser.send_pings.require_same_host",		true);
user_pref("webgl.disabled",					true);
user_pref("webgl.min_capability_mode",				true);
user_pref("webgl.disable-extensions",				true);
user_pref("webgl.disable-fail-if-major-performance-caveat",	true);
user_pref("webgl.enable-debug-renderer-info",			false);
user_pref("javascript.options.wasm",				false);
user_pref("javascript.options.asmjs",				false);
//
///******************************************************************************
// * SECTION: Misc                                                              *
// ******************************************************************************/
user_pref("camera.control.face_detection.enabled",		false);
user_pref("browser.search.countryCode",				"FR");
user_pref("browser.search.region",				"FR");
user_pref("browser.search.geoip.url",				"");
user_pref("intl.accept_languages",				"en-US, en");
user_pref("intl.locale.matchOS",				false);
user_pref("browser.search.geoSpecificDefaults",			false);
user_pref("clipboard.autocopy",					false);
user_pref("javascript.use_us_english_locale",			true);
//user_pref("keyword.enabled",					false);
user_pref("browser.urlbar.trimURLs",				false);
//user_pref("browser.fixup.alternate.enabled",			false);
//user_pref("browser.fixup.hide_user_pass", true);
user_pref("network.proxy.socks_remote_dns",			true);
//user_pref("network.manage-offline-status",			false);
//user_pref("security.mixed_content.block_active_content",	true);
//user_pref("security.mixed_content.block_display_content",	true);
//user_pref("network.jar.open-unsafe-types",			false);
//user_pref("security.xpconnect.plugin.unrestricted",		false);
//user_pref("security.fileuri.strict_origin_policy",		true);
//user_pref("browser.urlbar.filter.javascript",			true);
//user_pref("gfx.font_rendering.opentype_svg.enabled",		false);
//user_pref("media.video_stats.enabled",				false);
user_pref("general.buildID.override",				"20100101");
user_pref("browser.startup.homepage_override.buildID",		"20100101");
////user_pref("browser.display.use_document_fonts",			0);
//user_pref("network.protocol-handler.warn-external-default",	true);
user_pref("network.protocol-handler.external.http",		false);
user_pref("network.protocol-handler.external.https",		false);
user_pref("network.protocol-handler.external.javascript",	false);
user_pref("network.protocol-handler.external.moz-extension",	false);
user_pref("network.protocol-handler.external.ftp",		false);
user_pref("network.protocol-handler.external.file",		false);
user_pref("network.protocol-handler.external.about",		false);
user_pref("network.protocol-handler.external.chrome",		false);
user_pref("network.protocol-handler.external.blob",		false);
user_pref("network.protocol-handler.external.data",		false);
user_pref("network.protocol-handler.expose-all",		false);
user_pref("network.protocol-handler.expose.http",		true);
user_pref("network.protocol-handler.expose.https",		true);
user_pref("network.protocol-handler.expose.javascript",		true);
user_pref("network.protocol-handler.expose.moz-extension",	true);
user_pref("network.protocol-handler.expose.ftp",		true);
user_pref("network.protocol-handler.expose.file",		true);
user_pref("network.protocol-handler.expose.about",		true);
user_pref("network.protocol-handler.expose.chrome",		true);
user_pref("network.protocol-handler.expose.blob",		true);
user_pref("network.protocol-handler.expose.data",		true);
//
///******************************************************************************
// * SECTION: Extensions / plugins                                                       *
// ******************************************************************************/
//user_pref("security.dialog_enable_delay",			1000);
user_pref("plugin.state.flash",					0);
user_pref("plugin.state.java",					0);
//user_pref("dom.ipc.plugins.flash.subprocess.crashreporter.enabled",	false);
//user_pref("dom.ipc.plugins.reportCrashURL",			false);
//user_pref("browser.safebrowsing.blockedURIs.enabled", true);
//user_pref("shumway.disabled", true);
//user_pref("plugins.click_to_play",				true);
//user_pref("extensions.update.enabled",				true);
//user_pref("extensions.blocklist.enabled",			true);
//user_pref("services.blocklist.update_enabled",			true);
//user_pref("extensions.blocklist.url",				"https://blocklist.addons.mozilla.org/blocklist/3/%APP_ID%/%APP_VERSION%/");
//
///******************************************************************************
// * SECTION: Firefox (anti-)features / components                              *                            *
// ******************************************************************************/
//user_pref("devtools.webide.enabled",				false);
//user_pref("devtools.webide.autoinstallADBHelper",		false);
//user_pref("devtools.webide.autoinstallFxdtAdapters",		false);
//user_pref("devtools.debugger.remote-enabled",			false);
//user_pref("devtools.chrome.enabled",				false);
//user_pref("devtools.debugger.force-local",			true);
//user_pref("dom.flyweb.enabled",					false);
user_pref("browser.uitour.enabled",				false);
user_pref("privacy.trackingprotection.enabled",			true);
user_pref("privacy.trackingprotection.pbmode.enabled",		true);
user_pref("privacy.trackingprotection.introCount", 20);
user_pref("privacy.userContext.enabled",			true);
user_pref("privacy.userContext.ui.enabled", true);
//user_pref("privacy.resistFingerprinting",			true);
//user_pref("datareporting.healthreport.uploadEnabled",		true);
//user_pref("datareporting.healthreport.service.enabled",		true);
//user_pref("datareporting.policy.dataSubmissionEnabled",		true);
//user_pref("browser.selfsupport.url",				"");
//user_pref("loop.logDomains",					false);
//user_pref("app.update.enabled",                 true);
//user_pref("browser.safebrowsing.enabled",			true); // Firefox < 50
//user_pref("browser.safebrowsing.phishing.enabled",		false); // firefox >= 50
//user_pref("browser.safebrowsing.malware.enabled",		false);
//user_pref("browser.safebrowsing.downloads.remote.enabled",	false);
user_pref("browser.pocket.enabled",				false);
user_pref("extensions.pocket.enabled",				false);
////user_pref("extensions.shield-recipe-client.enabled",		false);
////user_pref("app.shield.optoutstudies.enabled",			false);
//user_pref("browser.newtabpage.activity-stream.feeds.section.topstories",	false);
//
/******************************************************************************
 * SECTION: Automatic connections                                             *
 ******************************************************************************/
user_pref("network.prefetch-next",				false);
user_pref("network.dns.disablePrefetch",			true);
user_pref("network.dns.disablePrefetchFromHTTPS",		true);
user_pref("network.predictor.enabled",				false);
user_pref("network.dns.blockDotOnion",				true);
//user_pref("browser.search.suggest.enabled",			false);
//user_pref("browser.urlbar.suggest.bookmark", false);
//user_pref("browser.urlbar.suggest.history", false);
//user_pref("browser.urlbar.suggest.openpage", false);
//user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.casting.enabled",				false);
user_pref("media.gmp-gmpopenh264.enabled",			false);
user_pref("media.gmp-manager.url",				"");
user_pref("network.http.speculative-parallel-limit",		0);
user_pref("browser.aboutHomeSnippets.updateUrl",		"");
user_pref("browser.search.update",				false);
user_pref("network.captive-portal-service.enabled",		false);

/******************************************************************************
 * SECTION: HTTP                                                              *
 ******************************************************************************/
user_pref("network.negotiate-auth.allow-insecure-ntlm-v1",	false);
user_pref("security.csp.experimentalEnabled",			true);
user_pref("security.csp.enable",				true);
user_pref("security.sri.enable",				true);
user_pref("network.http.referer.spoofSource",			true);
user_pref("network.cookie.cookieBehavior",			1);
user_pref("privacy.firstparty.isolate",				true);
user_pref("privacy.firstparty.isolate.restrict_opener_access", true);
user_pref("network.cookie.thirdparty.sessionOnly",		true);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly",     true);
//
///*******************************************************************************
// * SECTION: Caching                                                            *
// ******************************************************************************/
//user_pref("browser.cache.offline.enable",			false);
//user_pref("privacy.sanitize.sanitizeOnShutdown",		true);
//user_pref("privacy.clearOnShutdown.cache",			true);
//user_pref("privacy.clearOnShutdown.cookies",			false);
//user_pref("privacy.clearOnShutdown.downloads",			true);
//user_pref("privacy.clearOnShutdown.formdata",			true);
//user_pref("privacy.clearOnShutdown.history",			true);
//user_pref("privacy.clearOnShutdown.offlineApps",		true);
//user_pref("privacy.clearOnShutdown.sessions",			false);
//user_pref("privacy.clearOnShutdown.openWindows",		true);
//user_pref("privacy.sanitize.timeSpan",				0);
//user_pref("privacy.cpd.offlineApps",				true);
//user_pref("privacy.cpd.cache",					true);
//user_pref("privacy.cpd.cookies",				true);
//user_pref("privacy.cpd.downloads",				true);
//user_pref("privacy.cpd.formdata",				true);
//user_pref("privacy.cpd.history",				true);
//user_pref("privacy.cpd.sessions",				true);
//user_pref("places.history.enabled",				false);
//user_pref("browser.cache.disk.enable",				false);
//user_pref("browser.cache.disk_cache_ssl",			false);
//user_pref("browser.download.manager.retention",			0);
//user_pref("signon.rememberSignons",				false);
user_pref("browser.formfill.enable",				false);
////user_pref("network.cookie.lifetimePolicy",			2);
user_pref("signon.autofillForms",				false);
user_pref("signon.formlessCapture.enabled",			false);
user_pref("signon.autofillForms.http",				false);
user_pref("security.insecure_field_warning.contextual.enabled", true);
user_pref("browser.formfill.expire_days",			0);
//user_pref("browser.sessionstore.privacy_level",			2);
//user_pref("browser.helperApps.deleteTempFileOnExit",		true);
//user_pref("browser.pagethumbnails.capturing_disabled",		true);
//user_pref("browser.shell.shortcutFavicons",					false);
//user_pref("browser.bookmarks.max_backups", 0);
//user_pref("network.auth.subresource-http-auth-allow", 1);
//
///*******************************************************************************
// * SECTION: UI related                                                         *
// *******************************************************************************/
//user_pref("security.insecure_password.ui.enabled",		true);
//user_pref("browser.download.folderList",			2);
//user_pref("browser.download.useDownloadDir",			false);
////user_pref("browser.newtabpage.enabled",				false);
////user_pref("browser.newtab.url",					"about:blank");
//user_pref("browser.newtabpage.activity-stream.enabled",		false);
//user_pref("browser.newtabpage.enhanced",			false);
//user_pref("browser.newtab.preload",				false);
//user_pref("browser.newtabpage.directory.ping",			"");
//user_pref("browser.newtabpage.directory.source",		"data:text/plain,{}");
//user_pref("plugins.update.notifyUser",				true);
user_pref("network.IDN_show_punycode",				true);
//user_pref("browser.urlbar.autoFill",				false);
//user_pref("browser.urlbar.autoFill.typed",			false);
//user_pref("layout.css.visited_links_enabled",			false);
//user_pref("browser.urlbar.oneOffSearches",	        	false);
user_pref("browser.urlbar.maxRichResults",	        	10);
//user_pref("browser.shell.checkDefaultBrowser",			false);
//user_pref("security.ask_for_password",				2);
//user_pref("security.password_lifetime",				1);
//user_pref("browser.offline-apps.notify",			true);
//
/******************************************************************************
 * SECTION: Cryptography                                                      *
 ******************************************************************************/
user_pref("network.stricttransportsecurity.preloadlist",	true);
user_pref("security.OCSP.enabled",				1);
user_pref("security.ssl.enable_ocsp_stapling",			true);
user_pref("security.ssl.enable_ocsp_must_staple",		true);
user_pref("security.OCSP.require",				true);
user_pref("security.ssl.disable_session_identifiers",		true);
user_pref("security.tls.version.min",				1);
user_pref("security.tls.version.max",				4);
user_pref("security.tls.version.fallback-limit",		3);
user_pref("security.cert_pinning.enforcement_level",		2);
user_pref("security.pki.sha1_enforcement_level",		1);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken",	true);
user_pref("security.ssl.errorReporting.automatic",		false);
user_pref("browser.ssl_override_behavior",			1);

/******************************************************************************
 * SECTION: Cipher suites                                                     *
 ******************************************************************************/
user_pref("security.ssl3.rsa_null_sha",				false);
user_pref("security.ssl3.rsa_null_md5",				false);
user_pref("security.ssl3.ecdhe_rsa_null_sha",			false);
user_pref("security.ssl3.ecdhe_ecdsa_null_sha",			false);
user_pref("security.ssl3.ecdh_rsa_null_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_null_sha",			false);
user_pref("security.ssl3.rsa_seed_sha",				false);
user_pref("security.ssl3.rsa_rc4_40_md5",			false);
user_pref("security.ssl3.rsa_rc2_40_md5",			false);
user_pref("security.ssl3.rsa_1024_rc4_56_sha",			false);
user_pref("security.ssl3.rsa_camellia_128_sha",			false);
user_pref("security.ssl3.ecdhe_rsa_aes_128_sha",		false);
user_pref("security.ssl3.ecdhe_ecdsa_aes_128_sha",		false);
user_pref("security.ssl3.ecdh_rsa_aes_128_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_aes_128_sha",		false);
user_pref("security.ssl3.dhe_rsa_camellia_128_sha",		false);
user_pref("security.ssl3.dhe_rsa_aes_128_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_rc4_128_sha",		false);
user_pref("security.ssl3.ecdh_rsa_rc4_128_sha",			false);
user_pref("security.ssl3.ecdhe_ecdsa_rc4_128_sha",		false);
user_pref("security.ssl3.ecdhe_rsa_rc4_128_sha",		false);
user_pref("security.ssl3.rsa_rc4_128_md5",			false);
user_pref("security.ssl3.rsa_rc4_128_sha",			false);
user_pref("security.tls.unrestricted_rc4_fallback",		false);
user_pref("security.ssl3.dhe_dss_des_ede3_sha",			false);
user_pref("security.ssl3.dhe_rsa_des_ede3_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_des_ede3_sha",		false);
user_pref("security.ssl3.ecdh_rsa_des_ede3_sha",		false);
user_pref("security.ssl3.ecdhe_ecdsa_des_ede3_sha",		false);
user_pref("security.ssl3.ecdhe_rsa_des_ede3_sha",		false);
user_pref("security.ssl3.rsa_des_ede3_sha",			false);
user_pref("security.ssl3.rsa_fips_des_ede3_sha",		false);
user_pref("security.ssl3.ecdh_rsa_aes_256_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_aes_256_sha",		false);
user_pref("security.ssl3.rsa_camellia_256_sha",			false);
user_pref("security.ssl3.ecdhe_rsa_aes_256_sha",		true); // 0xc014
user_pref("security.ssl3.ecdhe_ecdsa_aes_256_sha",		true); // 0xc00a
user_pref("security.ssl3.ecdhe_ecdsa_aes_128_gcm_sha256",	true); // 0xc02b
user_pref("security.ssl3.ecdhe_rsa_aes_128_gcm_sha256",		true); // 0xc02f
user_pref("security.ssl3.ecdhe_ecdsa_chacha20_poly1305_sha256",	true);
user_pref("security.ssl3.ecdhe_rsa_chacha20_poly1305_sha256",	true);
user_pref("security.ssl3.dhe_rsa_camellia_256_sha",		false);
user_pref("security.ssl3.dhe_rsa_aes_256_sha",			false);
user_pref("security.ssl3.dhe_dss_aes_128_sha",			false);
user_pref("security.ssl3.dhe_dss_aes_256_sha",			false);
user_pref("security.ssl3.dhe_dss_camellia_128_sha",		false);
user_pref("security.ssl3.dhe_dss_camellia_256_sha",		false);
user_pref("security.ssl3.rsa_aes_256_sha",			true); // 0x35
user_pref("security.ssl3.rsa_aes_128_sha",			true); // 0x2f



user_pref("browser.bookmarks.openInTabClosesMenu", false);
user_pref("browser.cache.offline.insecure.enable", false);
user_pref("browser.display.background_color", "#666666");
user_pref("browser.fullscreen.autohide", false);
//user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
//user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
//user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
//user_pref("browser.newtabpage.activity-stream.prerender", false);
//user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr", false);
//user_pref("browser.onboarding.tour.onboarding-tour-addons.completed", true);
//user_pref("browser.onboarding.tour.onboarding-tour-customize.completed", true);
//user_pref("browser.onboarding.tour.onboarding-tour-default-browser.completed", true);
//user_pref("browser.onboarding.tour.onboarding-tour-performance.completed", true);
//user_pref("browser.onboarding.tour.onboarding-tour-private-browsing.completed", true);
//user_pref("browser.onboarding.tour.onboarding-tour-screenshots.completed", true);
//user_pref("browser.onboarding.tour.onboarding-tour-sync.completed", true);
//user_pref("browser.preferences.defaultPerformanceSettings.enabled", false);
user_pref("browser.search.context.loadInBackground", true);
//user_pref("browser.sessionstore.interval", 60000);
user_pref("browser.tabs.loadBookmarksInBackground", true);
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("browser.urlbar.doubleClickSelectsAll", false);
user_pref("browser.urlbar.formatting.enabled", false);
user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("devtools.editor.keymap", "vim");
user_pref("devtools.theme", "dark");
//user_pref("devtools.webextensions.https-everywhere@eff.org.enabled", true);
user_pref("dom.ipc.processCount", -1);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.firstTimeUse", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("extensions.formautofill.section.enabled", false);
user_pref("extensions.formautofill.supportRTL", true);
user_pref("findbar.highlightAll", true);
user_pref("findbar.modalHighlight", true);
user_pref("font.internaluseonly.changed", false);
user_pref("font.name.monospace.x-western", "Iosevka");
user_pref("font.name.sans-serif.x-western", "Segoe UI");
user_pref("font.name.serif.x-western", "Segoe UI");
//user_pref("full-screen-api.warning.timeout", 0);
//user_pref("general.autoScroll", true);
//user_pref("general.smoothScroll", false);
user_pref("general.warnOnAboutConfig", false);
//user_pref("layers.acceleration.force-enabled", true);
//user_pref("layout.css.prefixes.webkit", false);
//user_pref("lightweightThemes.selectedThemeID", "firefox-compact-dark@mozilla.org");
user_pref("middlemouse.paste", false);
user_pref("network.http.referer.XOriginPolicy", 2);
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);
user_pref("network.http.referer.trimmingPolicy", 2);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("privacy.donottrackheader.value", 1);
user_pref("privacy.spoof_english", 2);
//user_pref("services.sync.prefs.sync.browser.search.selectedEngine", true);
//user_pref("services.sync.prefs.sync.browser.tabs.closeButtons", true);
//user_pref("services.sync.prefs.sync.browser.urlbar.default.behavior", true);
//user_pref("services.sync.prefs.sync.lightweightThemes.isThemeSelected", true);
//user_pref("services.sync.prefs.sync.privacy.clearOnShutdown.passwords", true);
//user_pref("services.sync.prefs.sync.privacy.donottrackheader.value", true);
//user_pref("signon.importedFromSqlite", true);
//user_pref("toolkit.cosmeticAnimations.enabled", false);
//user_pref("ui.key.menuAccessKeyFocuses", false);
//
//user_pref("accessibility.typeaheadfind", true);
//user_pref("accessibility.typeaheadfind.flashBar", 0);
user_pref("browser.ctrlTab.recentlyUsedOrder", false);

// DNS over HTTPS
//user_pref("network.trr.mode", 3);
//user_pref("network.trr.uri", "https://dns.nextdns.io/b6742e");
//user_pref("network.trr.bootstrapAddress", "45.90.28.0");
user_pref("network.security.esni.enabled", true);

user_pref("browser.tabs.insertAfterCurrent", true);
user_pref("layout.spellcheckDefault", 0);
user_pref("accessibility.blockautorefresh", true);
user_pref("accessibility.force_disabled", 1);
user_pref("gfx.webrender.enabled", true);
//user_pref("general.useragent.override", "Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0");
user_pref("browser.urlbar.megabar", false);
user_pref("browser.urlbar.update1", false);
user_pref("media.videocontrols.picture-in-picture.keyboard-controls.enabled", true);
user_pref("media.videocontrols.picture-in-picture.audio-toggle.enabled", true);
user_pref("browser.ssb.enabled", true);
