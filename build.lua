-- (The MIT License)
--
-- Copyright (c) 2021-2025 Yegor Bugayenko
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the 'Software'), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

module = "iexec"
ctanupload = true
typesetopts = "-interaction=batchmode -shell-escape -halt-on-error"
checkopts = "-interaction=batchmode -shell-escape -halt-on-error"
tagfiles = {"build.lua", "iexec.dtx"}
cleanfiles = {"*.ret", "*.log", "*.glo", "*.fls", "*.idx", "*.out", "*.dvi", "*.fdb_latexmk", "*.aux", "*.sty", "*.zip", "iexec.pdf"}
typesetruns = 2

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
    "0000/00/00", os.date("%Y/%m/%d")
  )
end
