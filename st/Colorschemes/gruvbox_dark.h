static const char *colorname[] = {
    /* 8 normal colors */
    "#282828", /* black   */
    "#cc241d", /* red     */
    "#98971a", /* green   */
    "#d79921", /* yellow  */
    "#458588", /* blue    */
    "#b16286", /* magenta */
    "#689d6a", /* cyan    */
    "#a89984", /* white   */

    /* 8 bright colors */
    "#928374", /* black   */
    "#fb4934", /* red     */
    "#b8bb26", /* green   */
    "#fabd2f", /* yellow  */
    "#83a598", /* blue    */
    "#d3869b", /* magenta */
    "#8ec07c", /* cyan    */
    "#ebdbb2", /* white   */

    [255] = 0,

    "#ebdbb2", /* foreground     */
    "#282828", /* background     */
    "#add8e6", /* cursor         */
    "#555555", /* reverse cursor */
};

unsigned int defaultfg = 256;
unsigned int defaultbg = 257;
unsigned int defaultcs = 258;
static unsigned int defaultrcs = 259;
