module = "iexec"
ctanupload = true
typesetopts = "-interaction=batchmode -shell-escape -halt-on-error"
checkopts = "-interaction=batchmode -shell-escape -halt-on-error"
tagfiles = {"build.lua", "iexec.dtx"}
cleanfiles = {"*.ret", "*.log", "*.glo", "*.fls", "*.idx", "*.out", "*.dvi", "*.fdb_latexmk", "*.aux", "*.sty", "*.zip", "iexec.pdf"}
typesetruns = 2

uploadconfig = {
  pkg = "iexec",
  version = "0.11.4",
  author = "Yegor Bugayenko",
  uploader = "Yegor Bugayenko",
  email = "yegor256@gmail.com",
  note = "Bug fixes",
  announcement = "",
  ctanPath = "/macros/latex/contrib/iexec",
  bugtracker = "https://github.com/yegor256/iexec/issues",
  home = "",
  description = "With the help of the \\iexec command, you can execute a shell command and then input its output into your document. This package also lets you use any special symbols inside your command.",
  development = "",
  license = "mit",
  summary = "Execute shell commands and input their output",
  repository = "https://github.com/yegor256/iexec",
  support = "",
  topic = {"sys-supp", "exec-foreign"}
}

function update_tag(file, content, tagname, tagdate)
  return string.gsub(
    string.gsub(content, "0%.0%.0", tagname),
    "0000%-00%-00", os.date("%Y-%m-%d")
  )
end
