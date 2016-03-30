set path+=/Applications/National\ Instruments/NI-DAQmx\ Base/includes
set path+=/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/x86_64-darwin14,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/vendor_ruby/2.2.0,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/vendor_ruby/2.2.0/x86_64-darwin14,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/vendor_ruby,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/2.2.0,/Users/ned/.rvm/rubies/ruby-2.2.1/lib/ruby/2.2.0/x86_64-darwin14
set path+=/usr/local/Cellar/swig/3.0.8/share/swig/3.0.8/ruby,/usr/local/Cellar/swig/3.0.8/share/swig/3.0.8
set makeprg=make\ -f\ Makefile.swig
set errorformat^=%f:%l\|%c\|\ %m
au BufNewFile,BufRead Makefile* setf make
au BufNewFile,BufRead *.i setf swig
