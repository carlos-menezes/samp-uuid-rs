  
#define RUN_TESTS

#include <a_samp>
#include <YSI_Core\y_testing>

#include <uuid>

main() {}

Test:Generate() {
    new bool:result;

    new dest[UUID_LEN];
    result = UUID(dest);
    printf("%s", dest);

    ASSERT(strlen(dest) > 0);
}