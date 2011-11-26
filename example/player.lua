local vect = dokidoki.vect

local player = class(dokidoki.component)
player._name = 'player'

function player:_init(parent)
  self:super(parent)
  
  self.transform = dokidoki.transform(self)
  self.transform.pos = vect(100, 100)

  self.sprite = dokidoki.sprite(self)
  self.sprite.scale = vect(10, 10)

  self:add_handler_for('update')
end

local function wasd_input(w, a, s, d)
  local dir = vect((d and 1 or 0) - (a and 1 or 0),
                   (w and 1 or 0) - (s and 1 or 0))
  return dir ~= vect.zero and vect.norm(dir) or dir
end

function player:update()
  local keyboard = self.game.keyboard
  self.transform.pos = self.transform.pos + 2 * wasd_input(
    keyboard:key_held(string.byte('W')),
    keyboard:key_held(string.byte('A')),
    keyboard:key_held(string.byte('S')),
    keyboard:key_held(string.byte('D')))
end

return player
