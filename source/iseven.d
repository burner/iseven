module iseven;

import std.traits : isIntegral;

/** checks if the passed integer `input`, of type I, is even */
bool isEven(I)(I input) @safe @nogc pure nothrow if(isIntegral!I) {
	return input % 2 == 0;
}

///
@safe pure unittest {
	import std.meta : AliasSeq;
	import std.conv : to;
	import std.traits : isUnsigned;

	static foreach(T; AliasSeq!(ubyte, byte, ushort, short, uint, int, ulong, 
				long)) 
	{
		assert( isEven(to!T(0)));
		assert(!isEven(to!T(1)));
		assert( isEven(to!T(2)));

		static if(!isUnsigned!T) {
			assert( isEven(to!T(-0)));
			assert(!isEven(to!T(-1)));
			assert( isEven(to!T(-2)));
		}

		static assert( isEven(to!T(0)));
		static assert(!isEven(to!T(1)));
		static assert( isEven(to!T(2)));

		static if(!isUnsigned!T) {
			static assert( isEven(to!T(-0)));
			static assert(!isEven(to!T(-1)));
			static assert( isEven(to!T(-2)));
		}
	}
}
