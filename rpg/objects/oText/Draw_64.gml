NineSliseBoxStretched(sTextBoxBg, x1, y1, x2, y2, backgraund);
draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
var _print = string_copy(massage, 1, textProgress);

if (responses[0] != -1) && (textProgress >= string_length(massage))
{
	for (var i = 0; i < array_length_1d(responses); i++)
	{
		_print += "\n";
		if (i == responeSelected) _print += "> ";
		_print += responses[i];
		if (i == responeSelected) _print += " <";
	}
}

draw_text((x1+x2)/2, y1+12 , _print);
draw_set_color(c_white);
draw_text((x1+x2) /2, y1+11 , _print);