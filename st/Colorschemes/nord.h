static const char *colorname[] = {
    /* 8 normal colors */
    [0] = "#3b4252", /* black   */
    [1] = "#bf616a", /* red     */
    [2] = "#a3be8c", /* green   */
    [3] = "#ebcb8b", /* yellow  */
    [4] = "#81a1c1", /* blue    */
    [5] = "#b48ead", /* magenta */
    [6] = "#88c0d0", /* cyan    */
    [7] = "#e5e9f0", /* white   */
    
    /* 8 bright colors */
    [8]  = "#4c566a", /* black   */
    [9]  = "#bf616a", /* red     */
    [10] = "#a3be8c", /* green   */
    [11] = "#ebcb8b", /* yellow  */
    [12] = "#81a1c1", /* blue    */
    [13] = "#b48ead", /* magenta */
    [14] = "#8fbcbb", /* cyan    */
    [15] = "#eceff4", /* white   */

    /* special colors */
    [256] = "#d8dee9", /* foreground */
    [257] = "#2e3440", /* background */

    /* set this if using the selectioncolors patch */
    [258] = "#434c5e"  /* selection background */
};

unsigned int defaultfg = 256;
unsigned int defaultbg = 257;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;

/* set these if using the selectioncolors patch */
unsigned int selectionbg = 258;
unsigned int selectionfg = 256;
static int ignoreselfg = 0;
