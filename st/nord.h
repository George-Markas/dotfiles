static const char *colorname[] = {
    /* 8 normal colors */
    "#3b4252", /* black   */
    "#bf616a", /* red     */
    "#a3be8c", /* green   */
    "#ebcb8b", /* yellow  */
    "#81a1c1", /* blue    */
    "#b48ead", /* magenta */
    "#88c0d0", /* cyan    */
    "#e5e9f0", /* white   */
    
    /* 8 bright colors */
    "#4c566a", /* black   */
    "#bf616a", /* red     */
    "#a3be8c", /* green   */
    "#ebcb8b", /* yellow  */
    "#81a1c1", /* blue    */
    "#b48ead", /* magenta */
    "#8fbcbb", /* cyan    */
    "#eceff4", /* white   */

    [255] = 0,

    "#d8dee9", /* foreground */
    "#2e3440"  /* background */
};

unsigned int defaultfg = 256;
unsigned int defaultbg = 257;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
