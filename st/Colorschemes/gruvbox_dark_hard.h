static const char *colorname[] = {
    /* 8 normal colors */
    [0] = "#3c3836", /* black   */
    [1] = "#cc241d", /* red     */
    [2] = "#98971a", /* green   */
    [3] = "#d79921", /* yellow  */
    [4] = "#458588", /* blue    */
    [5] = "#b16286", /* magenta */
    [6] = "#689d6a", /* cyan    */
    [7] = "#a89984", /* white   */

    /* 8 bright colors */
    [8]  = "#928374", /* black   */
    [9]  = "#fb4934", /* red     */
    [10] = "#b8bb26", /* green   */
    [11] = "#fabd2f", /* yellow  */
    [12] = "#83a598", /* blue    */
    [13] = "#d3869b", /* magenta */
    [14] = "#8ec07c", /* cyan    */
    [15] = "#fbf1c7", /* white   */

    /* special colors */
    [256] = "#ebdbb2", /* foreground */
    [257] = "#1d2021", /* background */

    /* set this if using the selectioncolors patch */
    [258] = "#d65d0e"  /* selection background */
};

unsigned int defaultfg = 256;
unsigned int defaultbg = 257;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;

/* set these if using the selectioncolors patch */
unsigned int selectionbg = 258;
unsigned int selectionfg = 256;
static int ignoreselfg = 0;
