module Locomotive
  module Steam
    module Services

      class UrlBuilder < Struct.new(:site, :locale)

        def url_for(page)
          if locale.to_s == site.default_locale.to_s
            "/#{page.fullpath}"
          else
            "/#{locale}/#{page.fullpath}"
          end
        end

      end

    end
  end
end
