pid "../unicorn.pid"
stderr_path "../unicorn.stderr"

cwd = File.expand_path("#{__dir__}/../current")
working_directory cwd
before_exec do |_server|
  ENV["BUNDLE_GEMFILE"] = "#{cwd}/Gemfile"
end
