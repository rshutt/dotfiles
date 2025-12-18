return {
	name = "clangd",

	cmd = {
		"clangd",
		"--background-index",
		"--compile-commands-dir=.",
		-- THIS is the important part for ESP32 / PlatformIO
		"--query-driver=**/xtensa-esp32-elf-*",
	},
}
