#include "example.h"

UNIFEX_TERM foo(UnifexEnv* env) {
  char * text = "Hello shmex!";
  size_t size = strlen(text) + 1;
  UnifexPayload * payload = unifex_payload_alloc(env, UNIFEX_PAYLOAD_SHM, size);
  strncpy((char *) payload->data, text, size);
  UNIFEX_TERM result = foo_result_ok(env, payload);
  unifex_payload_release_ptr(&payload);
  return result;
}

void handle_destroy_state(UnifexEnv* env, UnifexNifState* state) {
  UNIFEX_UNUSED(env);
  UNIFEX_UNUSED(state);
}
