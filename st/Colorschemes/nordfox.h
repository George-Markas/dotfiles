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
    [8]  = "#465780", /* black   */
    [9]  = "#d06f79", /* red     */
    [10] = "#b1d196", /* green   */
    [11] = "#f0d399", /* yellow  */
    [12] = "#8cafd2", /* blue    */
    [13] = "#c895bf", /* magenta */
    [14] = "#93ccdc", /* cyan    */
    [15] = "#e7ecf4", /* white   */
    
    /* special colors */
    [256] = "#cdcecf", /* foreground */        
    [257] = "#2e3440", /* background */

    /* set this if using the selectioncolors patch */
    [258] = "#3e4a5b"  /* selection background */
};

unsigned int defaultfg = 256;
unsigned int defaultbg = 257;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 256;

/* set these if using the selectioncolors patch */
unsigned int selectionbg = 258;
unsigned int selectionfg = 256;
static int ignoreselfg = 0;
