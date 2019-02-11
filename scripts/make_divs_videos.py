# generate array with bash
# files=(*.mp4)
# for item in $files
#do
#printf "'%s'," $item
#done

array = []

i = 0

while i < len(array):
    video = "./assets/{}".format(array[i]) # UPDATE THIS
    img = "{}.png".format(video) 
    print("import video_{} from '{}';".format(i, video))
    print("import img_{} from '{}';".format(i, img))
    i += 1

i = 0

while i < len(array):
    video = "video_{}".format(i)
    img = "img_{}".format(i) 
    print("          <div style={{{{padding: '1vh' }}}} onClick={{() => this.setState({{mode: 'video', video: {}}})}}>\n            <img src={{{}}} className={{ this.state.picSizeMode }} />\n          </div>".format(video, img))
    i += 1
