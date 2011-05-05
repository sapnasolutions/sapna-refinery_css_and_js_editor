Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.author            = 'Surat Pyari'
  s.email             = 'suratpyari.db21@gmail.com'
  s.name              = 'refinerycms-css_and_js_files'
  s.version           = '0.1'
  s.description       = 'Ruby on Rails Css And Js Files engine for Refinery CMS. This engine allows you to write/edit css and javascript files without restarting the server.'
  s.date              = '2011-04-29'
  s.summary           = 'Css And Js Files engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
