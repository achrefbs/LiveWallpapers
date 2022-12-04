


str = """
Wallpaper(
img: "assets/{category}/thumbnails/{category}({i}).jpg",
video:
"https://github.com/achrefbs/LiveWallpapers/raw/main/assets/{category}/{category}({i}).mp4"),
"""


for i in range(28, 60):
    print(str.format(category="tvmovie", i=i))