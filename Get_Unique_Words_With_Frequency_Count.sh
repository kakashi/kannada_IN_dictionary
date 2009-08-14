#! /bin/sh

awk '
{
 ++count[$0]
 line[NR] = $0
}
END {
	while ( ++n <= NR )
  	{
   		if ( x[line[n]]++ == 0 ) printf "%7d %s\n", count[line[n]], line[n]
        }
    }	
' "$FILE"
