#include <stdexcept>
#include "Singleton.hpp"

const std::string Logger::kLogLevelDebug = "DEBUG";
const std::string Logger::kLogLevelInfo = "INFO";
const std::string Logger::kLogLevelError = "ERROR";

const char* const Logger::kLogFileName = "log.out";

Logger Logger::sInstance;

Logger& Logger::instance()
{
  return sInstance;
}

Logger::~Logger()
{
  mOutputStream.close();
}

Logger::Logger()
{
  mOutputStream.open(kLogFileName, std::ios_base::app);
  if (!mOutputStream.good()){
    throw std::runtime_error("Unable to initialize the logger!");
  }
}

void Logger::log(const std::string& inMessage, const std::string& inLogLevel)
{
  mOutputStream << inLogLevel << ": " << inMessage << std::endl; 
}

void Logger::log(const std::vector<std::string>& inMessages, const std::string& inLogLevel)
{
  for (size_t i = 0; i < inMessages.size(); i++){
    log(inMessages[i], inLogLevel);
  }
}
