package Expedia;

import java.util.LinkedList;
import java.util.List;

public class User {
  static {
    CodeCoverCoverageCounter$98nwf01h0tmcm9.ping();
  }

	public String Name;
	public List<Booking> Bookings;
	public int bonusFrequentFlierMiles;

	public User(String aName) {
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[1]++;
this.Name = aName;
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[2]++;
this.Bookings = new LinkedList<Booking>();
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[3]++;
this.bonusFrequentFlierMiles = 0;
	}

	public void book(Booking[] bookings) {
byte CodeCoverLoopChoiceHelper_L1 = 0;


		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[4]++;
CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[1]++;
for (Booking booking : bookings) {
if (CodeCoverLoopChoiceHelper_L1 == 0) {
  CodeCoverLoopChoiceHelper_L1++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[1]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[2]++;
} else if (CodeCoverLoopChoiceHelper_L1 == 1) {
  CodeCoverLoopChoiceHelper_L1++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[2]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[3]++;
}
			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[5]++;
this.Bookings.add(booking);
int CodeCoverConditionCoverageHelper_C1;

			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[6]++;
if ((((((CodeCoverConditionCoverageHelper_C1 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C1 |= (2)) == 0 || true) &&
 ((booking instanceof Flight) && 
  ((CodeCoverConditionCoverageHelper_C1 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[1].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C1, 1) || true)) || (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[1].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C1, 1) && false)) {
CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[1]++;
				CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[7]++;
ServiceLocator.Instance().RemoveFlight((Flight) booking);

			} else {
  CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[2]++;}
int CodeCoverConditionCoverageHelper_C2;

			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[8]++;
if ((((((CodeCoverConditionCoverageHelper_C2 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C2 |= (2)) == 0 || true) &&
 ((booking instanceof Car) && 
  ((CodeCoverConditionCoverageHelper_C2 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[2].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C2, 1) || true)) || (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[2].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C2, 1) && false)) {
CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[3]++;
				CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[9]++;
ServiceLocator.Instance().RemoveCar((Car) booking);

			} else {
  CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[4]++;}
		}
	}

	public void bookWithDoubleMiles(Booking[] bookings) {
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[10]++;
this.book(bookings);
byte CodeCoverLoopChoiceHelper_L2 = 0;


		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[11]++;
CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[4]++;
for (Booking booking : bookings) {
if (CodeCoverLoopChoiceHelper_L2 == 0) {
  CodeCoverLoopChoiceHelper_L2++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[4]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[5]++;
} else if (CodeCoverLoopChoiceHelper_L2 == 1) {
  CodeCoverLoopChoiceHelper_L2++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[5]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[6]++;
}
int CodeCoverConditionCoverageHelper_C3;
			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[12]++;
if ((((((CodeCoverConditionCoverageHelper_C3 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C3 |= (2)) == 0 || true) &&
 ((booking.getMiles() > 5000) && 
  ((CodeCoverConditionCoverageHelper_C3 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[3].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C3, 1) || true)) || (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[3].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C3, 1) && false)) {
CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[5]++;
				// flight rules say you can't earn more than 5000 double miles
				// for each flight
				CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[13]++;
this.bonusFrequentFlierMiles += 5000;

			} else {
CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[6]++;
				CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[14]++;
this.bonusFrequentFlierMiles += booking.getMiles() * 2;
			}
		}
	}

	public int FrequentFlierMiles() {
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[15]++;
int result = 0;
byte CodeCoverLoopChoiceHelper_L3 = 0;


		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[16]++;
CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[7]++;
for (Booking booking : this.Bookings) {
if (CodeCoverLoopChoiceHelper_L3 == 0) {
  CodeCoverLoopChoiceHelper_L3++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[7]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[8]++;
} else if (CodeCoverLoopChoiceHelper_L3 == 1) {
  CodeCoverLoopChoiceHelper_L3++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[8]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[9]++;
}
int CodeCoverConditionCoverageHelper_C4;
			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[17]++;
if ((((((CodeCoverConditionCoverageHelper_C4 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C4 |= (2)) == 0 || true) &&
 ((booking instanceof Flight) && 
  ((CodeCoverConditionCoverageHelper_C4 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[4].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C4, 1) || true)) || (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[4].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C4, 1) && false)) {
CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[7]++;
				CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[18]++;
result += ((Flight) booking).Miles;

			} else {
  CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[8]++;}
		}

		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[19]++;
return result;

	}

	private double GetDiscount() {
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[20]++;
double result = 1.0;
byte CodeCoverLoopChoiceHelper_L4 = 0;


		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[21]++;
CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[10]++;
for (Discount discount : ServiceLocator.Instance().AvailableDiscounts()) {
if (CodeCoverLoopChoiceHelper_L4 == 0) {
  CodeCoverLoopChoiceHelper_L4++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[10]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[11]++;
} else if (CodeCoverLoopChoiceHelper_L4 == 1) {
  CodeCoverLoopChoiceHelper_L4++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[11]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[12]++;
}
int CodeCoverConditionCoverageHelper_C5;
			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[22]++;
if ((((((CodeCoverConditionCoverageHelper_C5 = 0) == 0) || true) && ((
(((CodeCoverConditionCoverageHelper_C5 |= (8)) == 0 || true) &&
 (((1.0 - discount.ReductionPercent) < result) && 
  ((CodeCoverConditionCoverageHelper_C5 |= (4)) == 0 || true)))
) && (
(((CodeCoverConditionCoverageHelper_C5 |= (2)) == 0 || true) &&
 ((discount.FrequentFlyerMilesCost <= this
							.FrequentFlierMiles()) && 
  ((CodeCoverConditionCoverageHelper_C5 |= (1)) == 0 || true)))
))) && (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[5].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C5, 2) || true)) || (CodeCoverCoverageCounter$98nwf01h0tmcm9.conditionCounters[5].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C5, 2) && false)) {
CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[9]++;
				CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[23]++;
result = 1.0 - discount.ReductionPercent;

			} else {
  CodeCoverCoverageCounter$98nwf01h0tmcm9.branches[10]++;}
		}
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[24]++;
return result;
	}

	public double Price() {
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[25]++;
double result = 0.0;
byte CodeCoverLoopChoiceHelper_L5 = 0;


		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[26]++;
CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[13]++;
for (Booking booking : this.Bookings) {
if (CodeCoverLoopChoiceHelper_L5 == 0) {
  CodeCoverLoopChoiceHelper_L5++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[13]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[14]++;
} else if (CodeCoverLoopChoiceHelper_L5 == 1) {
  CodeCoverLoopChoiceHelper_L5++;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[14]--;
  CodeCoverCoverageCounter$98nwf01h0tmcm9.loops[15]++;
}
			CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[27]++;
result += booking.getBasePrice();
		}
		CodeCoverCoverageCounter$98nwf01h0tmcm9.statements[28]++;
return result * this.GetDiscount();
	}
}

class CodeCoverCoverageCounter$98nwf01h0tmcm9 extends org.codecover.instrumentation.java.measurement.CounterContainer {

  static {
    org.codecover.instrumentation.java.measurement.ProtocolImpl.getInstance(org.codecover.instrumentation.java.measurement.CoverageResultLogFile.getInstance("/home/gilderjw/Documents/csse376/.metadata/.plugins/org.eclipse.core.resources/.projects/Tutorial6/org.codecover.eclipse/coverage-logs/coverage-log-file.clf"), "61766ddc-b102-4a0f-8a08-24b5d03a50bd").addObservedContainer(new CodeCoverCoverageCounter$98nwf01h0tmcm9 ());
  }
    public static long[] statements = new long[29];
    public static long[] branches = new long[11];

  public static final org.codecover.instrumentation.java.measurement.ConditionCounter[] conditionCounters = new org.codecover.instrumentation.java.measurement.ConditionCounter[6];
  static {
    final String SECTION_NAME = "Expedia.User.java";
    final byte[] CONDITION_COUNTER_TYPES = {0,1,1,1,1,2};
    for (int i = 1; i <= 5; i++) {
      switch (CONDITION_COUNTER_TYPES[i]) {
        case 0 : break;
        case 1 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.SmallOneConditionCounter(SECTION_NAME, "C" + i); break;
        case 2 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.SmallTwoConditionCounter(SECTION_NAME, "C" + i); break;
        case 3 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.MediumConditionCounter(SECTION_NAME, "C" + i); break;
        case 4 : conditionCounters[i] = new org.codecover.instrumentation.java.measurement.LargeConditionCounter(SECTION_NAME, "C" + i); break;
      }
    }
  }
    public static long[] loops = new long[16];
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

  public CodeCoverCoverageCounter$98nwf01h0tmcm9 () {
    super("Expedia.User.java");
  }

  public static void ping() {/* nothing to do*/}

  public void reset() {
      for (int i = 1; i <= 28; i++) {
        statements[i] = 0L;
      }
      for (int i = 1; i <= 10; i++) {
        branches[i] = 0L;
      }
    for (int i = 1; i <= 5; i++) {
      if (conditionCounters[i] != null) {
        conditionCounters[i].reset();
      }
    }
      for (int i = 1; i <= 15; i++) {
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
    log.startNamedSection("Expedia.User.java");
      for (int i = 1; i <= 28; i++) {
        if (statements[i] != 0L) {
          log.passCounter("S" + i, statements[i]);
          statements[i] = 0L;
        }
      }
      for (int i = 1; i <= 10; i++) {
        if (branches[i] != 0L) {
          log.passCounter("B"+ i, branches[i]);
          branches[i] = 0L;
        }
      }
    for (int i = 1; i <= 5; i++) {
      if (conditionCounters[i] != null) {
        conditionCounters[i].serializeAndReset(log);
      }
    }
      for (int i = 1; i <= 5; i++) {
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

