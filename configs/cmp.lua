return{

cmp.setup(require("core.utils").user_plugin_opts("plugins.cmp", {
      preselect = cmp.PreselectMode.None,
      ...
      sources = {
        { name = "cmp_tabnine" },
      },
}
