(require 'lsp-mode)

(defvar elixir-ls-executable
  "~/code/elixir-ls/language_server.sh"
  "location of the elixir-ls language server startup script."
  )

(defun lsp-elixir--elixir-ls-command ()
  elixir-ls-executable
  )
(defun lsp-elixir/config-lsp-client
    (elixir-ls-exec)
  )

(lsp-define-stdio-client
 lsp-elixir-layer
 "elixir"
 (lambda () default-directory)
 ( elixir-ls-executable )
 ;; :command-fn 'lsp-elixir--elixir-ls-command
 )

(provide 'lsp-elixir)
