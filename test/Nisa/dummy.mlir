// RUN: nisa-opt %s | nisa-opt | FileCheck %s

module {
    // CHECK-LABEL: func @bar()
    func.func @bar() {
        %0 = arith.constant 1 : i32
        // CHECK: %{{.*}} = nisa.foo %{{.*}} : i32
        %res = nisa.foo %0 : i32
        return
    }

    // CHECK-LABEL: func @nisa_types(%arg0: !nisa.custom<"10">)
    func.func @nisa_types(%arg0: !nisa.custom<"10">) {
        return
    }
}
