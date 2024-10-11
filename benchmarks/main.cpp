#include <Kokkos_Core.hpp>
#include <benchmark/benchmark.h>

int main(int argc, char **argv) {
  Kokkos::ScopeGuard kokkos(argc, argv);

  ::benchmark::Initialize(&argc, argv);
  ::benchmark::RunSpecifiedBenchmarks();
}
