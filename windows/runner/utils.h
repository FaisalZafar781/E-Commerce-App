#ifndef RUNNER_UTILS_H_
#define RUNNER_UTILS_H_

#include <string>
#include <vector>

// Creates a console for the process, and redirects stdout and stderr to
// it for both the runner and the Flutter library.
void CreateAndAttachConsole();

// Takes a null-terminated wchar_t* encoded in UTF-16 and returns a std::string
// encoded in UTF-8. Returns an empty std::string on failure.
std::string Utf8FromUtf16(const wchar_t* utf16_string);

// Gets the command line arguments passed in as a std::vector<std::string>,
// encoded in UTF-8. Returns an empty std::vector<std::string> on failure.
std::vector<std::string> GetCommandLineArguments();

#endif  // RUNNER_UTILS_H_

# touched on 2025-05-28T23:01:25.677884Z
# touched on 2025-05-28T23:02:35.657132Z
# touched on 2025-05-28T23:03:19.780811Z
# touched on 2025-05-28T23:05:21.543404Z
# touched on 2025-05-28T23:06:03.416905Z
# touched on 2025-05-28T23:07:21.133874Z