local vect = dokidoki.vect

function make_box(self, y)
  local box = dokidoki.retro_component(self)
  box.transform = dokidoki.transform(box)
  box.transform.pos = vect(0 + math.random()/4, y, 0)
  dokidoki.retro_component(box, 'physics.box_rigid_body')
end

local function init_boxes(self)
  self.opengl_2d = dokidoki.opengl_2d(self)
  self.opengl_2d.width = 5
  self.opengl_2d.height = 5
  self.keyboard = dokidoki.keyboard(self)
  self.exit_handler = dokidoki.exit_handler(self)
  self.exit_handler.exit_on_esc = true
  self.physics = dokidoki.retro_component(self, 'physics.physics')

  for i = 1, 20 do
    make_box(self)
  end
end
return init_boxes

