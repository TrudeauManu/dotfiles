static const char norm_fg[] = "#cde0e7";
static const char norm_bg[] = "#14151e";
static const char norm_border[] = "#8f9ca1";

static const char sel_fg[] = "#cde0e7";
static const char sel_bg[] = "#7B859E";
static const char sel_border[] = "#cde0e7";

static const char urg_fg[] = "#cde0e7";
static const char urg_bg[] = "#837C8F";
static const char urg_border[] = "#837C8F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
