defmodule ShmexExample.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      nifs: [
        example: [
          deps: [unifex: :unifex],
          src_base: ".",
          sources: ["_generated/example.c", "example.c"]
        ]
      ]
    ]
  end
end
