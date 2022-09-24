module = "iexec"
typesetopts = "--interaction=batchmode --shell-escape"
uploadconfig = {
  pkg = "iexec",
  version = "0.0.0",
  author = "Yegor Bugayenko",
  uploader = "Yegor Bugayenko",
  email = "yegor256@gmail.com",
  note = "Bug fixes",
  announcement = "",
  ctanPath = "/macros/latex/contrib/iexec",
  bugtracker = "https://github.com/yegor256/iexec/issues",
  home = "https://github.com/yegor256/iexec",
  description = "With the help of the \\iexec command, you can execute a shell command and then input its output into your document. This package also lets you use any special symbols inside your command.",
  development = "https://github.com/yegor256/iexec",
  license = "mit",
  summary = "Execute shell commands and input their output",
  repository = "https://github.com/yegor256/iexec",
  support = "https://github.com/yegor256/iexec",
  topic = "verbatim"
}

function update_tag (file , content , tagname , tagdate)
  if string.match(file, "%.dtx$") then
    return string.gsub(content, "0%.0%.0", tagname)
  end
  return content
end