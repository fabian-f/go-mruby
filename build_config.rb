MRuby::Build.new do |conf|
  if ENV['OS'] != 'Windows_NT' then
    conf.cc.flags << %w|-fPIC| # needed for using bundled gems
  end
  toolchain :gcc
  #conf.gembox 'default'
  # Use standard Kernel#sprintf method
  conf.gem :core => "mruby-sprintf"

  # Use standard print/puts/p
  conf.gem :core => "mruby-print"

  # Use standard Math module
  conf.gem :core => "mruby-math"

  # Use standard Time class
  conf.gem :core => "mruby-time"

  # Use standard Struct class
  conf.gem :core => "mruby-struct"

  # Use Enumerable module extension
  conf.gem :core => "mruby-enum-ext"

  # Use String class extension
  conf.gem :core => "mruby-string-ext"

  # Use Numeric class extension
  conf.gem :core => "mruby-numeric-ext"

  # Use Array class extension
  conf.gem :core => "mruby-array-ext"

  # Use Hash class extension
  conf.gem :core => "mruby-hash-ext"

  # Use Range class extension
  conf.gem :core => "mruby-range-ext"

  # Use Proc class extension
  conf.gem :core => "mruby-proc-ext"

  # Use Symbol class extension
  conf.gem :core => "mruby-symbol-ext"

  # Use Random class
  conf.gem :core => "mruby-random"

  # Use Object class extension
  conf.gem :core => "mruby-object-ext"

  # Use ObjectSpace class
  conf.gem :core => "mruby-objectspace"

  # Use Fiber class
  conf.gem :core => "mruby-fiber"

  # Use Enumerator class (require mruby-fiber)
  conf.gem :core => "mruby-enumerator"

  # Use Enumerable::Lazy class (require mruby-enumerator)
  conf.gem :core => "mruby-enum-lazy"

  # Use toplevel object (main) methods extension
  conf.gem :core => "mruby-toplevel-ext"

  # Generate mirb command
  #conf.gem :core => "mruby-bin-mirb"

  # Generate mruby command
  #conf.gem :core => "mruby-bin-mruby"

  # Generate mruby-strip command
  #conf.gem :core => "mruby-bin-strip"

  # Use Kernel module extension
  conf.gem :core => "mruby-kernel-ext"

  # Use mruby-compiler to build other mrbgems
  #conf.gem :core => "mruby-compiler"
  
  
  #conf.gem :github => 'iij/mruby-require'
  #conf.gem :github => 'ReactiveX/RxRuby'
end