  
#define RUN_TESTS

#include <a_samp>
#include <YSI_Core\y_testing>

#include <uuid>

main() {}

Test:Generate() {
    new dest[UUID_LEN];
    UUID(dest);
    printf("%s", dest);

    ASSERT(strlen(dest) > 0);
}