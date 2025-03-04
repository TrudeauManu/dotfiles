const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#14151e", /* black   */
  [1] = "#837C8F", /* red     */
  [2] = "#7B859E", /* green   */
  [3] = "#7EA3C1", /* yellow  */
  [4] = "#8896B2", /* blue    */
  [5] = "#8FB1D6", /* magenta */
  [6] = "#94C9E5", /* cyan    */
  [7] = "#cde0e7", /* white   */

  /* 8 bright colors */
  [8]  = "#8f9ca1",  /* black   */
  [9]  = "#837C8F",  /* red     */
  [10] = "#7B859E", /* green   */
  [11] = "#7EA3C1", /* yellow  */
  [12] = "#8896B2", /* blue    */
  [13] = "#8FB1D6", /* magenta */
  [14] = "#94C9E5", /* cyan    */
  [15] = "#cde0e7", /* white   */

  /* special colors */
  [256] = "#14151e", /* background */
  [257] = "#cde0e7", /* foreground */
  [258] = "#cde0e7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
