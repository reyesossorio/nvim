return {
	"chomosuke/typst-preview.nvim",
	ft = "typst",
	version = "1.*",
	config = function()
		-- Busca el paquete 'tinymist' en Mason y obtiene su ruta de instalación
		local mr = require("mason-registry")
		local tinypkg = mr.get_package("tinymist")
		local bin_path = tinypkg:get_install_path() .. "/bin/tinymist"

		-- Inicializa el plugin usando la ruta absoluta al binario
		require("typst-preview").setup({
			dependencies_bin = {
				tinymist = bin_path,
			},
			-- otros opts que ya tenías, si es necesario
		})
	end,
}
