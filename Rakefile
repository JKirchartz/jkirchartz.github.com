task default: %w[help]

desc "Print this list"
task :help do
  system("rake -T");
end

desc "Build jekyll project"
task :build do
  system("./node_modules/postcss-cli/bin/postcss css/index.css -o css/style.css")
  system("bundle exec jekyll build")
end

desc "Build & serve jekyll project for develoment"
task :serve do
  system("./node_modules/postcss-cli/bin/postcss css/index.css -o css/style.css")
  system("bundle exec jekyll serve --incremental")
end

desc "Install dependencies (See Gemfile & package.json)"
task :install do
  system("bundle install")
  system("npm install")
end

desc "Build, Commit, and Deploy to Github"
task :deploy, [:msg] => ["build"] do |t, args|
  system("git add .")
  system("git commit -m '#{args.msg}'")
  system("git push")
end

desc "Create a draft"
task :draft, [:title] do |t, args|
  system("bundle exec jekyll draft #{args.title}")
end


desc "Create a post"
task :post, [:title] do |t, args|
  system("bundle exec jekyll post #{args.title}")
end

desc "Create a page"
task :page, [:title] do |t, args|
  system("bundle exec jekyll page #{args.title}")
end


desc "Publish a draft"
task :publish, [:filepath] do |t, args|
  system("bundle exec jekyll page #{args.filepath}")
end


desc "Unpublish a post"
task :unpublish, [:filepath] do |t, args|
  system("bundle exec jekyll page #{args.filepath}")
end
