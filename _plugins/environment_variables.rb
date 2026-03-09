module Jekyll
  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      # Load BUILD_* environment variables into site.config
      if ENV['BUILD_TIME']
        site.config['build_time'] = ENV['BUILD_TIME']
      end
      if ENV['BUILD_REF']
        site.config['build_ref'] = ENV['BUILD_REF']
      end
      if ENV['BUILD_COMMIT']
        site.config['build_commit'] = ENV['BUILD_COMMIT']
      end
    end
  end
end

