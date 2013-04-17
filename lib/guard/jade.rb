require 'guard'
require 'guard/guard'
require 'guard/watcher'
require 'guard/helpers/starter'
require 'guard/helpers/formatter'

module Guard
  class Jade < Guard
    include ::Guard::Helpers::Starter

    def target_filename(directory, file)
      File.join(directory, File.basename(file).sub(/(\.html)?\.jade$/, '.html'))
    end

    def act_on(directory, file)
      target = target_filename(directory, file)
      FileUtils.mkdir_p(File.dirname(target))

      if system("./node_modules/jade/bin/jade < #{file} > #{target}")
        mtime = File.mtime(file)
        File.utime(mtime, mtime, file)
        file
      else
        raise Exception.new("Failed to compile.")
      end
    end
  end
end

