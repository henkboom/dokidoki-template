local function init(self)
  self.opengl_2d = dokidoki.opengl_2d(self)
  self.keyboard = dokidoki.keyboard(self)
  self.exit_handler = dokidoki.exit_handler(self)
  self.exit_handler.exit_on_esc = true

  self.player = example.player(self)
end

return init
