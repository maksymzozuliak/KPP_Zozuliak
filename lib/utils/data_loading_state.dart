/// Enum representing the state of data loading.
enum DataLoadingState {
  none,    // No data loading operation in progress
  loading, // Data loading operation in progress
  data,    // Data loading successful
  error,   // Error occurred during data loading
  empty,   // Data loading successful, but result is empty
}
