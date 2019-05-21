# Qutebrowser config file
# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

# Position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'top'

c.editor.command = ["urxvt", "-e", "nvim", '{}']

# c.window.hide_decoration = True

# c.content.user_stylesheets = "~/.config/qutebrowser/css/apprentice-all-sites.css"

c.downloads.location.directory = "~/Téléchargements"

c.url.searchengines = \
    {
            'DEFAULT': 'https://duckduckgo.com/?q={}',
            'd': 'https://duckduckgo.com/?q={}',
            'di': 'https://duckduckgo.com/?ia=images&iax=images&q={}',
            'qw': 'https://lite.qwant.com/?q={}&t=web',
            'qwi': 'https://lite.qwant.com/?q={}&t=images',
            'gi': 'https://www.google.fr/search?q={}&tbm=isch',
            'g': 'https://www.google.fr/search?q={}',
            'lfm': 'https://www.last.fm/fr/search?q={}',
            'rym': 'https://rateyourmusic.com/search?searchtype=a&searchterm={}',
            'scr': 'https://www.senscritique.com/search?q={}',
            'map': 'https://www.google.fr/maps/?q={}',
            'eba': 'https://www.ebay.fr/sch/i.html?_nkw={}',
            'twi': 'https://twitter.com/search?q={}',
            'yt': 'https://youtube.com/results?search_query={}',
            'rarbg': 'https://rarbg.to/torrents.php?search={}',
            'aur': 'https://aur.archlinux.org/packages/?K={}',
            'arch': 'https://www.archlinux.org/packages/?q={}',
            'gplay': 'https://play.google.com/store/search?q={}',
            'ali': 'https://fr.aliexpress.com/wholesale?SearchText={}',
            'wiki': 'https://fr.wikipedia.org/w/index.php?search={}',
            'ldlc': 'https://www.ldlc.com/navigation/{}',
            'ama': 'https://www.amazon.fr/s?k={}',
            'wikien': 'https://en.wikipedia.org/w/index.php?search={}',
            'git': 'https://github.com/search?q={}',
            'rut': 'https://rutracker.org/forum/tracker.php?nm={}',
            'steam': 'https://store.steampowered.com/search/?term={}',
            'deal': 'https://www.dealabs.com/search?q={}',
            'protondb': 'https://www.protondb.com/search?q={}',
            'archwikifr': 'https://wiki.archlinux.fr/index.php?search={}',
            'archwiki': 'https://wiki.archlinux.org/index.php?search={}',
            'discogs': 'https://www.discogs.com/search/?q={}&type=all',
            'musicbrainz': 'https://musicbrainz.org/search?query={}&type=artist&method=indexed',
            'leboncoin': 'https://www.leboncoin.fr/recherche/?text={}',
            'userbenchmark': 'https://www.userbenchmark.com/Search?searchTerm={}',
            'idealo': 'https://www.idealo.fr/prechcat.html?q={}',
            'gsmarena': 'https://www.gsmarena.com/res.php3?sSearch={}',
            'xda': 'https://forum.xda-developers.com/search/?query={}',
            'reddit': 'https://www.reddit.com/search?q={}&sort=relevance&t=all',
            'subreddit': 'https://www.reddit.com/r/{}',
            'fdroid': 'https://search.f-droid.org/?q={}',
            'ug': 'https://www.ultimate-guitar.com/search.php?search_type=title&value={}',
            'scholar': 'https://scholar.google.fr/scholar?hl=fr&q={}',
            'libgen': 'http://www.libgen.is/search.php?req={}',
            'scihub': 'https://sci-hub.tw/{}',
            'trend': 'https://trends.google.fr/trends/explore?q={}',
            'stack': 'https://stackoverflow.com/search?q={}',
            'osm': 'https://www.openstreetmap.org/search?query={}',
            'goodreads': 'https://www.goodreads.com/search?q={}',
            'firefoxadd': 'https://addons.mozilla.org/fr/firefox/search/?q={}',
            'thomann': 'https://www.thomann.de/fr/search_dir.html?sw={}'
    }

c.bindings.commands = {
    'insert': {
        '<Ctrl-f>'        : 'fake-key <Right>',
        '<Ctrl-b>'        : 'fake-key <Left>',
        '<Ctrl-a>'        : 'fake-key <Home>',
        '<Ctrl-e>'        : 'fake-key <End>',
        '<Ctrl-n>'        : 'fake-key <Down>',
        '<Ctrl-p>'        : 'fake-key <Up>',
        '<Alt-v>'         : 'fake-key <PgUp>',
        '<Ctrl-v>'        : 'fake-key <PgDown>',
        '<Alt-f>'         : 'fake-key <Ctrl-Right>',
        '<Alt-b>'         : 'fake-key <Ctrl-Left>',
        '<Ctrl-d>'        : 'fake-key <Delete>',
        '<Alt-d>'         : 'fake-key <Ctrl-Delete>',
        '<Alt-Backspace>' : 'fake-key <Ctrl-Backspace>',
        '<Ctrl-y>'        : 'insert-text {primary}',
    }
}


# Uncomment this to still load settings configured via autoconfig.yml
config.load_autoconfig()

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0"
c.content.headers.accept_language = "fr-FR,en-US"
c.content.headers.do_not_track = True

# Bindings for normal mode
config.bind(',M', 'spawn ~/scripts/umpv.py --ytdl-format=bestvideo[height<=?1080]+bestaudio/best {url}')
config.bind(',m', 'hint links spawn ~/scripts/umpv.py --ytdl-format=bestvideo[height<=?1080]+bestaudio/best {hint-url}')
config.bind(';m', 'hint --rapid links spawn ~/scripts/umpv.py --ytdl-format=bestvideo[height<=?1080]+bestaudio/best {hint-url}')

c.content.javascript.enabled = False
c.content.cookies.accept = "no-3rdparty"
# c.qt.force_software_rendering = "qt-quick"
c.downloads.position = 'bottom'
# c.tabs.background = True

# Reddit bindings
config.bind(',rn', 'open {url}/new')
config.bind(',rh', 'open {url}/hot')
config.bind(',rth', 'open {url}/top/?sort=top&t=hour')
config.bind(',rtd', 'open {url}/top/?sort=top&t=day')
config.bind(',rtw', 'open {url}/top/?sort=top&t=week')
config.bind(',rtm', 'open {url}/top/?sort=top&t=month')
config.bind(',rty', 'open {url}/top/?sort=top&t=year')
config.bind(',rta', 'open {url}/top/?sort=top&t=all')
# config.bind(',wen', 'open {url}.replace("fr", "en", 1)')
# config.bind(',wfr', 'open {url}.replace("en", "fr", 1)')

config.bind(',ce', 'config-edit')
