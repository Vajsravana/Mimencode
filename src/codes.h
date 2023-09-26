/* This file was automatically generated. */

void fromqp(FILE *infile,FILE *outfile,char **boundaries,int *boundaryct);
void toqp(FILE *infile,FILE *outfile);
void from64(FILE *infile,FILE *outfile,char **boundaries,int *boundaryct,int PortableNewlines);
void to64(FILE *infile,FILE *outfile,int PortableNewlines);
void almostputc(int c,FILE *outfile,int PortableNewlines);
int PendingBoundary(char *s,char **Boundaries,int *BoundaryCt);
void output64chunk(int c1,int c2,int c3,int pads,FILE *outfile);
int nextcharin(FILE *infile,int PortableNewlines);
