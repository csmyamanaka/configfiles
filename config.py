# Qutebrowser Configuration file
# "config.py"
# M. Yamanaka
# email: myamanaka@live.com
# website: csmyamanaka.com
# license: MIT (see included "LICENSE" file for details)

#load pre-existing config file
config.load_autoconfig()

#start pages
config.set("url.start_pages", ["https://duckduckgo.com"])
config.set("url.default_page", "https://duckduckgo.com")

#enable "cool" mode
config.set("colors.webpage.darkmode.enabled", True)

#search engine shortcuts
se = {"DEFAULT": "https://duckduckgo.com/?q={}",
  "yt": "https://www.youtube.com/results?search_query={}",
  "arch": "https://wiki.archlinux.org/index.php/{}",
  "wp": "https://www.reddit.com/r/wallpaper/search?q={}&restrict_sr=1"}

config.set("url.searchengines", se)
