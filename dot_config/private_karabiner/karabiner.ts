import { map, mapSimultaneous, rule, withCondition, ifInputSource, ifKeyboardType, writeToProfile, layer } from "https://deno.land/x/karabinerts@1.30.3/deno.ts";

const colemak_rule = rule('Colemak DH ISO Layout').manipulators([
  withCondition(ifInputSource({ language: 'ru' }).unless()) ([
		//map('q', { optional: 'any' }).to('q'),
		//map('w', { optional: 'any' }).to('w'),
		map('e', { optional: 'any' }).to('f'),
		map('r', { optional: 'any' }).to('p'),
		map('t', { optional: 'any' }).to('b'),
		map('y', { optional: 'any' }).to('j'),
		map('u', { optional: 'any' }).to('l'),
		map('i', { optional: 'any' }).to('u'),
		map('o', { optional: 'any' }).to('y'),
		map('p', { optional: 'any' }).to('semicolon'),

		//map('a', { optional: 'any' }).to('a'),
		map('s', { optional: 'any' }).to('r'),
		map('d', { optional: 'any' }).to('s'),
		map('f', { optional: 'any' }).to('t'),
		//map('g', { optional: 'any' }).to('g'),
		map('h', { optional: 'any' }).to('m'),
		map('j', { optional: 'any' }).to('n'),
		map('k', { optional: 'any' }).to('e'),
		map('l', { optional: 'any' }).to('i'),
		map('semicolon', { optional: 'any' }).to('o'),

		map('grave_accent_and_tilde', { optional: 'any' }).to('z').condition(ifKeyboardType('iso')),
		map('z', { optional: 'any' }).to('x'),
		map('x', { optional: 'any' }).to('c'),
		map('c', { optional: 'any' }).to('d'),
		map('v', { optional: 'any' }).to('v'),
		map('b', { optional: 'any' }).to('left_shift').condition(ifKeyboardType('iso')),
		map('b', { optional: 'any' }).to('z').condition(ifKeyboardType('iso').unless()),
		map('n', { optional: 'any' }).to('k'),
		map('m', { optional: 'any' }).to('h'),
		map('non_us_backslash', { optional: 'any' }).to('grave_accent_and_tilde'),
		//map(',', { optional: 'any' }).to(','),
		//map('.', { optional: 'any' }).to('.'),
		//map('/', { optional: 'any' }).to('/'),
  ])
]);

const tricks = rule('Caps Lock → Hyper').manipulators([
  map('caps_lock').to('left_control').toIfAlone('escape'),
]);

// const extend = layer('caps_lock', 'Extend').manipulators([
//     map('j').to('left_arrow'),
//     map('k').to('down_arrow'),
//     map('l').to('up_arrow'),
//     map(';').to('right_arrow'),
// ]);

writeToProfile(
  // Use '--dry-run' to print the generated JSON to the console
  'Default',
  [
		colemak_rule,
		tricks,
  ]
);
