local status_ok, glow = pcall(require, "glow")
if not status_ok then
  return
end

glow.setup({
  width_ratio = 1.0,
  height_ratio = 1.0
})
