return {
  cmd = { "zls" },
  filetypes = { "zig" },
  root_markers = { "build.zig", "build.zig.zon", ".git" },
  settings = {
    zls = {
      enable_snippets = true,
      enable_autofix = true,
      enable_import_embedfile_argument_completions = true,
      warn_style = true,
      enable_semantic_tokens = true,
      enable_inlay_hints = true,
      inlay_hints_show_builtin = true,
      inlay_hints_show_anonymous = true,
      inlay_hints_show_parameter_names = true,
      inlay_hints_show_import_paths = true,
      inlay_hints_show_other = true,
      operator_completions = true,
      check_for_update = false,
    },
  },
}
