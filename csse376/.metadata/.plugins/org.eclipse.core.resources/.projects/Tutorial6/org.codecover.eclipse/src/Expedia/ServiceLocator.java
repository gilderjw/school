package Expedia;

import java.util.LinkedList;
import java.util.List;

public class ServiceLocator {
  static {
    CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.ping();
  }

	static { CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[1]++; }
private static ServiceLocator _instance = null;
	public static ServiceLocator Instance()
	{
int CodeCoverConditionCoverageHelper_C1;
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[2]++;
if((((((CodeCoverConditionCoverageHelper_C1 = 0) == 0) || true) && (
(((CodeCoverConditionCoverageHelper_C1 |= (2)) == 0 || true) &&
 ((_instance == null) && 
  ((CodeCoverConditionCoverageHelper_C1 |= (1)) == 0 || true)))
)) && (CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.conditionCounters[1].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C1, 1) || true)) || (CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.conditionCounters[1].incrementCounterOfBitMask(CodeCoverConditionCoverageHelper_C1, 1) && false)) {
CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.branches[1]++;
				CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[3]++;
_instance = new ServiceLocator();
} else {
  CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.branches[2]++;}
			
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[4]++;
return _instance;
	}
	
	private List<Discount> discounts;
	private List<Flight> flights;
	private List<Car> cars;
	
	public ServiceLocator ()
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[5]++;
discounts = new LinkedList<Discount>();
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[6]++;
flights = new LinkedList<Flight>();
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[7]++;
cars = new LinkedList<Car>();
	}
	
	public List<Flight> AvailableFlights()
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[8]++;
return flights;
	}
	
	public List<Discount> AvailableDiscounts()
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[9]++;
return discounts;
	}
	
	public List<Car> AvailableCars()
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[10]++;
return cars;	
	}
	
	public void AddDiscount(Discount aDiscount)
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[11]++;
discounts.add(aDiscount);	
	}
	
	public void AddFlight(Flight aFlight)
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[12]++;
flights.add(aFlight);	
	}
	
	public void RemoveFlight(Flight aFlight)
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[13]++;
flights.remove(aFlight);	
	}
	
	public void AddCar(Car aCar)
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[14]++;
cars.add(aCar);	
	}
	
	public void RemoveCar(Car aCar)
	{
		CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p.statements[15]++;
cars.remove(aCar);	
	}
}

class CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p extends org.codecover.instrumentation.java.measurement.CounterContainer {

  static {
    org.codecover.instrumentation.java.measurement.ProtocolImpl.getInstance(org.codecover.instrumentation.java.measurement.CoverageResultLogFile.getInstance("/home/gilderjw/Documents/csse376/.metadata/.plugins/org.eclipse.core.resources/.projects/Tutorial6/org.codecover.eclipse/coverage-logs/coverage-log-file.clf"), "61766ddc-b102-4a0f-8a08-24b5d03a50bd").addObservedContainer(new CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p ());
  }
    public static long[] statements = new long[16];
    public static long[] branches = new long[3];

  public static final org.codecover.instrumentation.java.measurement.ConditionCounter[] conditionCounters = new org.codecover.instrumentation.java.measurement.ConditionCounter[2];
  static {
    final String SECTION_NAME = "Expedia.ServiceLocator.java";
    final byte[] CONDITION_COUNTER_TYPES = {0,1};
    for (int i = 1; i <= 1; i++) {
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

  public CodeCoverCoverageCounter$1dbeqmd7fcv157s8hhtshup0co682p () {
    super("Expedia.ServiceLocator.java");
  }

  public static void ping() {/* nothing to do*/}

  public void reset() {
      for (int i = 1; i <= 15; i++) {
        statements[i] = 0L;
      }
      for (int i = 1; i <= 2; i++) {
        branches[i] = 0L;
      }
    for (int i = 1; i <= 1; i++) {
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
    log.startNamedSection("Expedia.ServiceLocator.java");
      for (int i = 1; i <= 15; i++) {
        if (statements[i] != 0L) {
          log.passCounter("S" + i, statements[i]);
          statements[i] = 0L;
        }
      }
      for (int i = 1; i <= 2; i++) {
        if (branches[i] != 0L) {
          log.passCounter("B"+ i, branches[i]);
          branches[i] = 0L;
        }
      }
    for (int i = 1; i <= 1; i++) {
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

