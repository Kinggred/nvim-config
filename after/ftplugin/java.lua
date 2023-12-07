local fn = vim.fn
local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" })
local home = os.getenv("HOME")
local workspace_folder = home .. "/.cache/jdtls/" .. fn.fnamemodify(root_dir, ":p:h:t")

local config = {
	cmd = {},
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
print(workspace_folder)
config = {
	cmd = {

		-- 💀
		"java", -- or '/path/to/java17_or_newer/bin/java'
		-- depends on if `java` is in your $PATH env variable and if it points to the right version.

		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",

		"-jar",
		"/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.500.v20230717-2134.jar",

		"-configuration",
		"/usr/share/java/jdtls/config_linux",

		"-data",
		workspace_folder,

		"--data",
		workspace_folder,
	},
}

vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Actions" })

require("jdtls").start_or_attach(config)
