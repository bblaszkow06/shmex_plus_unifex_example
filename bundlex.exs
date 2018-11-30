defmodule ShmexBlogpost.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      nifs: nifs(Bundlex.platform())
    ]
  end

  def nifs(_platform) do
    [
      example: [
        deps: [unifex: :unifex],
        src_base: ".",
        sources: ["_generated/example.c", "example.c"]
      ]
    ]
  end
end
