package Expedia;

import java.util.Date;

public class Flight implements Booking {
  static {
    CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.ping();
  }


	private Date dateThatFlightLeaves;
	private Date dateThatFlightReturns;
	
	public int Miles;
	
	public int getMiles(){
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[1]++;
return Miles;
	}
	
	public double getBasePrice ()
	{
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[2]++;
double lengthOfSpread = (dateThatFlightReturns.getTime() - dateThatFlightLeaves.getTime())/1000.0/60.0/60.0/24.0;
		
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[3]++;
return 200 + lengthOfSpread*20;
	}
	
	public int NumberOfPassengers()
	{
		
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[4]++;
return Database.Passengers.size();
		
	}
	
	public IDatabase Database;
	
	public Flight (Date startDate, Date endDate, int someMiles)
	{
int CodeCoverConditionCoverageHelper_C1;
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[5]++;
if((((((CodeCoverConditionCoverageHelper_C1 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C1 |= (2)) == 0 || true) &&
 ((endDate.before(startDate)) && 
  ((CodeCoverConditionCoverageHelper_C1 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.conditionCounters[1].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C1, 1) || true)) || (CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.conditionCounters[1].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C1, 1) && false)) {
CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.branches[1]++;
			CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[6]++;
throw new RuntimeException("End date cannot be before start date!");
} else {
  CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.branches[2]++;}
int CodeCoverConditionCoverageHelper_C2;
		
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[7]++;
if((((((CodeCoverConditionCoverageHelper_C2 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C2 |= (2)) == 0 || true) &&
 ((someMiles < 0) && 
  ((CodeCoverConditionCoverageHelper_C2 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.conditionCounters[2].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C2, 1) || true)) || (CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.conditionCounters[2].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C2, 1) && false)) {
CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.branches[3]++;
			CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[8]++;
throw new RuntimeException("Miles must be positive!");
} else {
  CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.branches[4]++;}
		
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[9]++;
dateThatFlightLeaves = startDate;
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[10]++;
dateThatFlightReturns = endDate;
		CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt.statements[11]++;
Miles = someMiles;
	}

}

class CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt extends org.codecover.instrumentation.java.measurement.CounterContainer {

  static {
    org.codecover.instrumentation.java.measurement.ProtocolImpl.getInstance(org.codecover.instrumentation.java.measurement.CoverageResultLogFile.getInstance("/home/gilderjw/Documents/csse376/.metadata/.plugins/org.eclipse.core.resources/.projects/Tutorial6/org.codecover.eclipse/coverage-logs/coverage-log-file.clf"), "61766ddc-b102-4a0f-8a08-24b5d03a50bd").addObservedContainer(new CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt ());
  }
    public static long[] statements = new long[12];
    public static long[] branches = new long[5];

  public static final org.codecover.instrumentation.java.measurement.ConditionCounter[] conditionCounters = new org.codecover.instrumentation.java.measurement.ConditionCounter[3];
  static {
    final String SECTION_NAME = "Expedia.Flight.java";
    final byte[] CONDITION_COUNTER_TYPES = {0,1,1};
    for (int i = 1; i <= 2; i++) {
      switch (CONDITION_COUNTER_TYPES[i]) {
        case 0 : break;
        case 1 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.SmallOneConditionCounter(SECTION_NAME, "C" + i); break;
        case 2 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.SmallTwoConditionCounter(SECTION_NAME, "C" + i); break;
        case 3 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.MediumConditionCounter(SECTION_NAME, "C" + i); break;
        case 4 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.LargeConditionCounter(SECTION_NAME, "C" + i); break;
      }
    }
  }
    public static long[] loops = new long[1];
    public static java.util.concurrent.atomic.AtomicLong[] syncs = new java.util.concurrent.atomic.AtomicLong[3];
    static {
      for (int i = 0; i <= 2; i++) {
        syncs[i] = new java.util.concurrent.atomic.AtomicLong(0L);
      }
    }
    public static java.util.Hashtable[] syncWaits = new java.util.Hashtable[1];
    static {
      for (int i = 0; i <= 0; i++) {
        syncWaits[i] = new java.util.Hashtable();
      }
    }
    public static long[] qmo = new long[2];

  public CodeCoverCoverageCounter$ap3sn0xgp9sg3fwpt () {
    super("Expedia.Flight.java");
  }

  public static void ping() {/* nothing to do*/}

  public void reset() {
      for (int i = 1; i <= 11; i++) {
        statements[i] = 0L;
      }
      for (int i = 1; i <= 4; i++) {
        branches[i] = 0L;
      }
    for (int i = 1; i <= 2; i++) {
      if (conditionCounters[i] != null) {
        conditionCounters[i].reset();
      }
    }
      for (int i = 1; i <= 0; i++) {
        loops[i] = 0L;
      }
      for (int i = 0; i <= 2; i++) {
        syncs[i].set(0L);
      }
      for (int i = 0; i < 2; i++) {
        qmo[i] = 0L;
      }
  }

  public void serializeAndReset(org.codecover.instrumentation.measurement.CoverageCounterLog log) {
    log.startNamedSection("Expedia.Flight.java");
      for (int i = 1; i <= 11; i++) {
        if (statements[i] != 0L) {
          log.passCounter("S" + i, statements[i]);
          statements[i] = 0L;
        }
      }
      for (int i = 1; i <= 4; i++) {
        if (branches[i] != 0L) {
          log.passCounter("B"+ i, branches[i]);
          branches[i] = 0L;
        }
      }
    for (int i = 1; i <= 2; i++) {
      if (conditionCounters[i] != null) {
        conditionCounters[i].serializeAndReset(log);
      }
    }
      for (int i = 1; i <= 0; i++) {
        if (loops[i * 3 - 2] != 0L) {
          log.passCounter("L" + i + "-0", loops[i * 3 - 2]);
          loops[i * 3 - 2] = 0L;
        }
        if ( loops[i * 3 - 1] != 0L) {
          log.passCounter("L" + i + "-1", loops[i * 3 - 1]);
          loops[i * 3 - 1] = 0L;
        }
        if ( loops[i * 3] != 0L) {
          log.passCounter("L" + i + "-2", loops[i * 3]);
          loops[i * 3] = 0L;
        }
      }
      for (int i = 0; i <= 0; i++) {
        if (syncs[i * 3].get() != 0L) {
          log.passCounter("Y" + i + "-0", syncs[i * 3].get());
          syncs[i * 3].set(0L);
        }
        if (syncs[i * 3 + 1].get() != 0L) {
          log.passCounter("Y" + i + "-1", syncs[i * 3 + 1].get());
          syncs[i * 3 + 1].set(0L);
        }
        if (syncs[i * 3 + 2].get() != 0L) {
          log.passCounter("Y" + i + "-2", syncs[i * 3 + 2].get());
          syncs[i * 3 + 2].set(0L);
        }
      }
      for (int i = 0; i < 1; i++) {
        if (qmo[i * 2] != 0L) {
          log.passCounter("Q" + i + "-0", qmo[i * 2]);
          qmo[i * 2] = 0L;
        }
        if (qmo[i * 2 + 1] != 0L) {
          log.passCounter("Q" + i + "-1", qmo[i * 2 + 1]);
          qmo[i * 2 + 1] = 0L;
        }
      }
  }
}

