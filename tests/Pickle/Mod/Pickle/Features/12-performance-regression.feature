# Diagnostic coverage for GitHub issue #3. These scenarios intentionally share the same fixture,
# camera position and measured tick count. Pickle records tickCost for every scenario, so the
# report can distinguish the cost of merely loading the module from the cost of instantiated
# graphics rules. This is not a substitute for the reporter's DPA trace or for an ASF-only A/B.
@performance
Feature: bounded tick cost of the Neolithic storage module

  Background:
    Given the save "test-colony" is loaded
    And I clear the rectangle from (140, 150) to (151, 157)
    And I move the camera to (146, 154)
    And I zoom all the way in

  Scenario: module loaded with no Neolithic storage building
    When I wait 1200 ticks
    And I wait 1200 ticks
    And I wait 1200 ticks

  Scenario: one empty large pot is visible
    Given a "ASNeolithicLargePot" is built at (146, 154)
    When I wait 1200 ticks
    And I wait 1200 ticks
    And I wait 1200 ticks

  Scenario: one filled large pot is visible
    Given a "ASNeolithicLargePot" is built at (146, 154)
    And I spawn a "RawBerries" at (146, 154)
    When I wait 1200 ticks
    And I wait 1200 ticks
    And I wait 1200 ticks

  Scenario: twenty-four filled large pots are visible
    Given a "ASNeolithicLargePot" is built at (140, 152)
    And I spawn a "RawBerries" at (140, 152)
    And a "ASNeolithicLargePot" is built at (142, 152)
    And I spawn a "RawBerries" at (142, 152)
    And a "ASNeolithicLargePot" is built at (144, 152)
    And I spawn a "RawBerries" at (144, 152)
    And a "ASNeolithicLargePot" is built at (146, 152)
    And I spawn a "RawBerries" at (146, 152)
    And a "ASNeolithicLargePot" is built at (148, 152)
    And I spawn a "RawBerries" at (148, 152)
    And a "ASNeolithicLargePot" is built at (150, 152)
    And I spawn a "RawBerries" at (150, 152)
    And a "ASNeolithicLargePot" is built at (140, 154)
    And I spawn a "RawBerries" at (140, 154)
    And a "ASNeolithicLargePot" is built at (142, 154)
    And I spawn a "RawBerries" at (142, 154)
    And a "ASNeolithicLargePot" is built at (144, 154)
    And I spawn a "RawBerries" at (144, 154)
    And a "ASNeolithicLargePot" is built at (146, 154)
    And I spawn a "RawBerries" at (146, 154)
    And a "ASNeolithicLargePot" is built at (148, 154)
    And I spawn a "RawBerries" at (148, 154)
    And a "ASNeolithicLargePot" is built at (150, 154)
    And I spawn a "RawBerries" at (150, 154)
    And a "ASNeolithicLargePot" is built at (140, 156)
    And I spawn a "RawBerries" at (140, 156)
    And a "ASNeolithicLargePot" is built at (142, 156)
    And I spawn a "RawBerries" at (142, 156)
    And a "ASNeolithicLargePot" is built at (144, 156)
    And I spawn a "RawBerries" at (144, 156)
    And a "ASNeolithicLargePot" is built at (146, 156)
    And I spawn a "RawBerries" at (146, 156)
    And a "ASNeolithicLargePot" is built at (148, 156)
    And I spawn a "RawBerries" at (148, 156)
    And a "ASNeolithicLargePot" is built at (150, 156)
    And I spawn a "RawBerries" at (150, 156)
    And a "ASNeolithicLargePot" is built at (140, 157)
    And I spawn a "RawBerries" at (140, 157)
    And a "ASNeolithicLargePot" is built at (142, 157)
    And I spawn a "RawBerries" at (142, 157)
    And a "ASNeolithicLargePot" is built at (144, 157)
    And I spawn a "RawBerries" at (144, 157)
    And a "ASNeolithicLargePot" is built at (146, 157)
    And I spawn a "RawBerries" at (146, 157)
    And a "ASNeolithicLargePot" is built at (148, 157)
    And I spawn a "RawBerries" at (148, 157)
    And a "ASNeolithicLargePot" is built at (150, 157)
    And I spawn a "RawBerries" at (150, 157)
    When I wait 1200 ticks
    And I wait 1200 ticks
    And I wait 1200 ticks

  # Repeat the empty scene after caches and JIT have warmed up. The first scenario alone is not a
  # fair comparator because it is necessarily the first gameplay workload in the process.
  Scenario: module loaded with no Neolithic storage building after warmup
    When I wait 1200 ticks
    And I wait 1200 ticks
    And I wait 1200 ticks
