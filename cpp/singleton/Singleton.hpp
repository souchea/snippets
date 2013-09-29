##
## Written by souche_a <souchet.aurelien@gmail.com>
##
##

#include <iostream>
#include <fstream>
#include <vector>
#include <string>

class Logger {

public:
  static const std::string kLogLevelDebug;
  static const std::string kLogLevelInfo;
  static const std::string kLogLevelError;

  static Logger& instance();

  static void log(const std::string& inMessage, const std::string& inLogLevel);
  static void log(const std::vector<std::string>& inMessages, const std::string& inLogLevel);

protected:
  static Logger sInstance;
  static const char* const kLogFileName;
  static std::ofstream mOutputStream;

private:
  Logger();
  virtual ~Logger();
};
