// RUN: %swift -target x86_64-apple-macosx10.9 %s -emit-ir -verify -g -o - | FileCheck %s
class C<A> {
// CHECK: null, null, ![[A:[^,]+]]} ; [ DW_TAG_structure_type ] [_TtQq_C11archetypes21C]
  // CHECK: null, null, ![[B:[^,]+]]} ; [ DW_TAG_structure_type ] [_TtQq_FC11archetypes21C3foo{{.*}}]
// CHECK: ![[A]]} ; [ DW_TAG_arg_variable ] [x] [line [[@LINE+2]]]
// CHECK: ![[B]]} ; [ DW_TAG_arg_variable ] [y] [line [[@LINE+1]]]
	func foo <B> (var x : A, var y : B)
	{
		println("hello world")
	}
}

C<Int>().foo(1, y: 3.14);
