provider tesla {

    /*
     * Initial generic probes for TESLA automata.
     */

    /*
     *      1. char * ( automaton name )
     *      2. char * ( invalid state number)
     * XXXIM: Other info needed for the violated automaton?
     */
    probe automaton__violated(char *, int );

    probe event(char *, int );
    /*
     * State Entry/Exit related general purpose probes:
     * state-entry:
     *      1. char * ( automaton name )
     *      2. char * ( state number)
     * state-exit:
     *      1. char * ( automaton name )
     *      2. char * ( state number)
     */
    probe state__entry(char *, int );
    probe state__exit(char *, int );

    /*
     * Tesla Internal probes.
     * 
     * XXXIM: Do we need tesla-internal probes(state creation/free)?
     */


};

/*
 * Documentation for the stability is provided at Sun's
 * Solaris Dynamic Tracing guide.
 */
#pragma D attributes stable/Evolving/Common provider tesla provider
#pragma D attributes stable/Evolving/Common provider tesla module
#pragma D attributes stable/Evolving/Common provider tesla function
#pragma D attributes stable/Evolving/Common provider tesla name
#pragma D attributes stable/Evolving/Common provider tesla args
