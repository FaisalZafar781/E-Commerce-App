#ifndef FLUTTER_MY_APPLICATION_H_
#define FLUTTER_MY_APPLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, my_application, MY, APPLICATION,
                     GtkApplication)

/**
 * my_application_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new #MyApplication.
 */
MyApplication* my_application_new();

#endif  // FLUTTER_MY_APPLICATION_H_

# touched on 2025-05-28T23:01:39.507625Z
# touched on 2025-05-28T23:01:59.212841Z
# touched on 2025-05-28T23:02:39.050861Z
# touched on 2025-05-28T23:04:34.439308Z