using = require('dokidoki.base').using

using 'dokidoki'
using 'pl'
using 'example'

class = pl.class

local game = dokidoki.game(
  {'preupdate', 'update', 'postupdate'},
  {'predraw', 'draw', 'postdraw'})

--game:start_main_loop(example.init)
game:start_main_loop(example.init_boxes)
