namespace :build do
  desc "Build the rpm"
  task :rpm => [ "dbapp.war", :schema ] do
      sh("fpm -s dir -t rpm -n #{PACKAGE_NAME} -v #{build_id} -C #{BUILD_DIR} .")
  end

  desc "Build the deb"
  task :deb => [ "dbapp.war", :schema ] do
      sh("fpm -s dir -t deb -n #{PACKAGE_NAME} -v #{build_id} -C #{BUILD_DIR} .")
  end
end
