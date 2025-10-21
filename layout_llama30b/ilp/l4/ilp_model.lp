\ Model 2025-10-21_17-00-14
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  flow_source_0 + flow_source_1 + flow_source_2 + flow_source_3
Subject To
 hold_constraint_0: hold_0_1 + hold_0_2 + hold_0_3 + hold_0_4 + hold_0_5
   + hold_0_6 + hold_0_7 + hold_0_8 + hold_0_9 + hold_0_10 + hold_0_11
   + hold_0_12 + hold_0_13 + hold_0_14 + hold_0_15 + hold_0_16 + hold_0_17
   + hold_0_18 + hold_0_19 + hold_0_20 + hold_0_21 + hold_0_22 = 1
 end_constraint_0: start_0 + hold_0_1 + 2 hold_0_2 + 3 hold_0_3
   + 4 hold_0_4 + 5 hold_0_5 + 6 hold_0_6 + 7 hold_0_7 + 8 hold_0_8
   + 9 hold_0_9 + 10 hold_0_10 + 11 hold_0_11 + 12 hold_0_12 + 13 hold_0_13
   + 14 hold_0_14 + 15 hold_0_15 + 16 hold_0_16 + 17 hold_0_17
   + 18 hold_0_18 + 19 hold_0_19 + 20 hold_0_20 + 21 hold_0_21
   + 22 hold_0_22 <= 60
 hold_constraint_1: hold_1_1 + hold_1_2 + hold_1_3 + hold_1_4 + hold_1_5
   + hold_1_6 + hold_1_7 + hold_1_8 + hold_1_9 + hold_1_10 + hold_1_11
   + hold_1_12 + hold_1_13 + hold_1_14 + hold_1_15 + hold_1_16 + hold_1_17
   + hold_1_18 + hold_1_19 + hold_1_20 + hold_1_21 + hold_1_22 = 1
 end_constraint_1: start_1 + hold_1_1 + 2 hold_1_2 + 3 hold_1_3
   + 4 hold_1_4 + 5 hold_1_5 + 6 hold_1_6 + 7 hold_1_7 + 8 hold_1_8
   + 9 hold_1_9 + 10 hold_1_10 + 11 hold_1_11 + 12 hold_1_12 + 13 hold_1_13
   + 14 hold_1_14 + 15 hold_1_15 + 16 hold_1_16 + 17 hold_1_17
   + 18 hold_1_18 + 19 hold_1_19 + 20 hold_1_20 + 21 hold_1_21
   + 22 hold_1_22 <= 60
 hold_constraint_2: hold_2_1 + hold_2_2 + hold_2_3 + hold_2_4 + hold_2_5
   + hold_2_6 + hold_2_7 + hold_2_8 + hold_2_9 + hold_2_10 + hold_2_11
   + hold_2_12 + hold_2_13 + hold_2_14 + hold_2_15 + hold_2_16 + hold_2_17
   + hold_2_18 + hold_2_19 + hold_2_20 + hold_2_21 + hold_2_22 = 1
 end_constraint_2: start_2 + hold_2_1 + 2 hold_2_2 + 3 hold_2_3
   + 4 hold_2_4 + 5 hold_2_5 + 6 hold_2_6 + 7 hold_2_7 + 8 hold_2_8
   + 9 hold_2_9 + 10 hold_2_10 + 11 hold_2_11 + 12 hold_2_12 + 13 hold_2_13
   + 14 hold_2_14 + 15 hold_2_15 + 16 hold_2_16 + 17 hold_2_17
   + 18 hold_2_18 + 19 hold_2_19 + 20 hold_2_20 + 21 hold_2_21
   + 22 hold_2_22 <= 60
 hold_constraint_3: hold_3_1 + hold_3_2 + hold_3_3 + hold_3_4 + hold_3_5
   + hold_3_6 + hold_3_7 + hold_3_8 + hold_3_9 + hold_3_10 + hold_3_11
   + hold_3_12 + hold_3_13 + hold_3_14 + hold_3_15 + hold_3_16 + hold_3_17
   + hold_3_18 + hold_3_19 + hold_3_20 + hold_3_21 + hold_3_22 = 1
 end_constraint_3: start_3 + hold_3_1 + 2 hold_3_2 + 3 hold_3_3
   + 4 hold_3_4 + 5 hold_3_5 + 6 hold_3_6 + 7 hold_3_7 + 8 hold_3_8
   + 9 hold_3_9 + 10 hold_3_10 + 11 hold_3_11 + 12 hold_3_12 + 13 hold_3_13
   + 14 hold_3_14 + 15 hold_3_15 + 16 hold_3_16 + 17 hold_3_17
   + 18 hold_3_18 + 19 hold_3_19 + 20 hold_3_20 + 21 hold_3_21
   + 22 hold_3_22 <= 60
 node_flow_constraint_0: flow_source_0 - flow_0_sink - flow_0_1 + flow_1_0
   - flow_0_2 + flow_2_0 - flow_0_3 + flow_3_0 = 0
 node_flow_constraint_1: flow_source_1 - flow_1_sink + flow_0_1 - flow_1_0
   - flow_1_2 + flow_2_1 - flow_1_3 + flow_3_1 = 0
 node_flow_constraint_2: flow_source_2 - flow_2_sink + flow_0_2 - flow_2_0
   + flow_1_2 - flow_2_1 - flow_2_3 + flow_3_2 = 0
 node_flow_constraint_3: flow_source_3 - flow_3_sink + flow_0_3 - flow_3_0
   + flow_1_3 - flow_3_1 + flow_2_3 - flow_3_2 = 0
 node_throughput_constraint_0: - 9437.294026501191 hold_0_1
   - 4588.858228778084 hold_0_2 - 3059.527862100398 hold_0_3
   - 2227.918613972287 hold_0_4 - 1729.432750600287 hold_0_5
   - 1410.393363377481 hold_0_6 - 1169.360237226471 hold_0_7
   - 988.4898803487176 hold_0_8 - 878.4989615343638 hold_0_9
   - 762.4130585363105 hold_0_10 - 674.311050780159 hold_0_11
   - 593.5473682387194 hold_0_12 - 525.1863571568135 hold_0_13
   - 487.773082523477 hold_0_14 - 419.4060620592113 hold_0_15
   - 373.83748315399 hold_0_16 - 351.9033926654183 hold_0_17
   - 314.7822411127337 hold_0_18 - 281.4856870046378 hold_0_19
   - 258.8011520663784 hold_0_20 - 230.437872925291 hold_0_21
   - 220.0565768342973 hold_0_22 + flow_source_0 + flow_1_0 + flow_2_0
   + flow_3_0 <= 0
 node_throughput_constraint_1: - 9437.294026501191 hold_1_1
   - 4588.858228778084 hold_1_2 - 3059.527862100398 hold_1_3
   - 2227.918613972287 hold_1_4 - 1729.432750600287 hold_1_5
   - 1410.393363377481 hold_1_6 - 1169.360237226471 hold_1_7
   - 988.4898803487176 hold_1_8 - 878.4989615343638 hold_1_9
   - 762.4130585363105 hold_1_10 - 674.311050780159 hold_1_11
   - 593.5473682387194 hold_1_12 - 525.1863571568135 hold_1_13
   - 487.773082523477 hold_1_14 - 419.4060620592113 hold_1_15
   - 373.83748315399 hold_1_16 - 351.9033926654183 hold_1_17
   - 314.7822411127337 hold_1_18 - 281.4856870046378 hold_1_19
   - 258.8011520663784 hold_1_20 - 230.437872925291 hold_1_21
   - 220.0565768342973 hold_1_22 + flow_source_1 + flow_0_1 + flow_2_1
   + flow_3_1 <= 0
 node_throughput_constraint_2: - 9437.294026501191 hold_2_1
   - 4588.858228778084 hold_2_2 - 3059.527862100398 hold_2_3
   - 2227.918613972287 hold_2_4 - 1729.432750600287 hold_2_5
   - 1410.393363377481 hold_2_6 - 1169.360237226471 hold_2_7
   - 988.4898803487176 hold_2_8 - 878.4989615343638 hold_2_9
   - 762.4130585363105 hold_2_10 - 674.311050780159 hold_2_11
   - 593.5473682387194 hold_2_12 - 525.1863571568135 hold_2_13
   - 487.773082523477 hold_2_14 - 419.4060620592113 hold_2_15
   - 373.83748315399 hold_2_16 - 351.9033926654183 hold_2_17
   - 314.7822411127337 hold_2_18 - 281.4856870046378 hold_2_19
   - 258.8011520663784 hold_2_20 - 230.437872925291 hold_2_21
   - 220.0565768342973 hold_2_22 + flow_source_2 + flow_0_2 + flow_1_2
   + flow_3_2 <= 0
 node_throughput_constraint_3: - 9437.294026501191 hold_3_1
   - 4588.858228778084 hold_3_2 - 3059.527862100398 hold_3_3
   - 2227.918613972287 hold_3_4 - 1729.432750600287 hold_3_5
   - 1410.393363377481 hold_3_6 - 1169.360237226471 hold_3_7
   - 988.4898803487176 hold_3_8 - 878.4989615343638 hold_3_9
   - 762.4130585363105 hold_3_10 - 674.311050780159 hold_3_11
   - 593.5473682387194 hold_3_12 - 525.1863571568135 hold_3_13
   - 487.773082523477 hold_3_14 - 419.4060620592113 hold_3_15
   - 373.83748315399 hold_3_16 - 351.9033926654183 hold_3_17
   - 314.7822411127337 hold_3_18 - 281.4856870046378 hold_3_19
   - 258.8011520663784 hold_3_20 - 230.437872925291 hold_3_21
   - 220.0565768342973 hold_3_22 + flow_source_3 + flow_0_3 + flow_1_3
   + flow_2_3 <= 0
 edge_enable_constr_source_0: start_0 + switch_source_0 >= 1
 edge_disable_constr_source_0: start_0 + 60 switch_source_0 <= 60
 edge_enable_constr_source_1: start_1 + switch_source_1 >= 1
 edge_disable_constr_source_1: start_1 + 60 switch_source_1 <= 60
 edge_enable_constr_source_2: start_2 + switch_source_2 >= 1
 edge_disable_constr_source_2: start_2 + 60 switch_source_2 <= 60
 edge_enable_constr_source_3: start_3 + switch_source_3 >= 1
 edge_disable_constr_source_3: start_3 + 60 switch_source_3 <= 60
 edge_enable_constr_0_sink: - start_0 - hold_0_1 - 2 hold_0_2 - 3 hold_0_3
   - 4 hold_0_4 - 5 hold_0_5 - 6 hold_0_6 - 7 hold_0_7 - 8 hold_0_8
   - 9 hold_0_9 - 10 hold_0_10 - 11 hold_0_11 - 12 hold_0_12 - 13 hold_0_13
   - 14 hold_0_14 - 15 hold_0_15 - 16 hold_0_16 - 17 hold_0_17
   - 18 hold_0_18 - 19 hold_0_19 - 20 hold_0_20 - 21 hold_0_21
   - 22 hold_0_22 + 59 switch_0_sink >= -59
 edge_disable_constr_0_sink: - start_0 - hold_0_1 - 2 hold_0_2 - 3 hold_0_3
   - 4 hold_0_4 - 5 hold_0_5 - 6 hold_0_6 - 7 hold_0_7 - 8 hold_0_8
   - 9 hold_0_9 - 10 hold_0_10 - 11 hold_0_11 - 12 hold_0_12 - 13 hold_0_13
   - 14 hold_0_14 - 15 hold_0_15 - 16 hold_0_16 - 17 hold_0_17
   - 18 hold_0_18 - 19 hold_0_19 - 20 hold_0_20 - 21 hold_0_21
   - 22 hold_0_22 + 60 switch_0_sink <= 0
 edge_enable_constr_1_sink: - start_1 - hold_1_1 - 2 hold_1_2 - 3 hold_1_3
   - 4 hold_1_4 - 5 hold_1_5 - 6 hold_1_6 - 7 hold_1_7 - 8 hold_1_8
   - 9 hold_1_9 - 10 hold_1_10 - 11 hold_1_11 - 12 hold_1_12 - 13 hold_1_13
   - 14 hold_1_14 - 15 hold_1_15 - 16 hold_1_16 - 17 hold_1_17
   - 18 hold_1_18 - 19 hold_1_19 - 20 hold_1_20 - 21 hold_1_21
   - 22 hold_1_22 + 59 switch_1_sink >= -59
 edge_disable_constr_1_sink: - start_1 - hold_1_1 - 2 hold_1_2 - 3 hold_1_3
   - 4 hold_1_4 - 5 hold_1_5 - 6 hold_1_6 - 7 hold_1_7 - 8 hold_1_8
   - 9 hold_1_9 - 10 hold_1_10 - 11 hold_1_11 - 12 hold_1_12 - 13 hold_1_13
   - 14 hold_1_14 - 15 hold_1_15 - 16 hold_1_16 - 17 hold_1_17
   - 18 hold_1_18 - 19 hold_1_19 - 20 hold_1_20 - 21 hold_1_21
   - 22 hold_1_22 + 60 switch_1_sink <= 0
 edge_enable_constr_2_sink: - start_2 - hold_2_1 - 2 hold_2_2 - 3 hold_2_3
   - 4 hold_2_4 - 5 hold_2_5 - 6 hold_2_6 - 7 hold_2_7 - 8 hold_2_8
   - 9 hold_2_9 - 10 hold_2_10 - 11 hold_2_11 - 12 hold_2_12 - 13 hold_2_13
   - 14 hold_2_14 - 15 hold_2_15 - 16 hold_2_16 - 17 hold_2_17
   - 18 hold_2_18 - 19 hold_2_19 - 20 hold_2_20 - 21 hold_2_21
   - 22 hold_2_22 + 59 switch_2_sink >= -59
 edge_disable_constr_2_sink: - start_2 - hold_2_1 - 2 hold_2_2 - 3 hold_2_3
   - 4 hold_2_4 - 5 hold_2_5 - 6 hold_2_6 - 7 hold_2_7 - 8 hold_2_8
   - 9 hold_2_9 - 10 hold_2_10 - 11 hold_2_11 - 12 hold_2_12 - 13 hold_2_13
   - 14 hold_2_14 - 15 hold_2_15 - 16 hold_2_16 - 17 hold_2_17
   - 18 hold_2_18 - 19 hold_2_19 - 20 hold_2_20 - 21 hold_2_21
   - 22 hold_2_22 + 60 switch_2_sink <= 0
 edge_enable_constr_3_sink: - start_3 - hold_3_1 - 2 hold_3_2 - 3 hold_3_3
   - 4 hold_3_4 - 5 hold_3_5 - 6 hold_3_6 - 7 hold_3_7 - 8 hold_3_8
   - 9 hold_3_9 - 10 hold_3_10 - 11 hold_3_11 - 12 hold_3_12 - 13 hold_3_13
   - 14 hold_3_14 - 15 hold_3_15 - 16 hold_3_16 - 17 hold_3_17
   - 18 hold_3_18 - 19 hold_3_19 - 20 hold_3_20 - 21 hold_3_21
   - 22 hold_3_22 + 59 switch_3_sink >= -59
 edge_disable_constr_3_sink: - start_3 - hold_3_1 - 2 hold_3_2 - 3 hold_3_3
   - 4 hold_3_4 - 5 hold_3_5 - 6 hold_3_6 - 7 hold_3_7 - 8 hold_3_8
   - 9 hold_3_9 - 10 hold_3_10 - 11 hold_3_11 - 12 hold_3_12 - 13 hold_3_13
   - 14 hold_3_14 - 15 hold_3_15 - 16 hold_3_16 - 17 hold_3_17
   - 18 hold_3_18 - 19 hold_3_19 - 20 hold_3_20 - 21 hold_3_21
   - 22 hold_3_22 + 60 switch_3_sink <= 0
 edge_disable_constr1_0_1: start_0 - start_1 + hold_0_1 + 2 hold_0_2
   + 3 hold_0_3 + 4 hold_0_4 + 5 hold_0_5 + 6 hold_0_6 + 7 hold_0_7
   + 8 hold_0_8 + 9 hold_0_9 + 10 hold_0_10 + 11 hold_0_11 + 12 hold_0_12
   + 13 hold_0_13 + 14 hold_0_14 + 15 hold_0_15 + 16 hold_0_16
   + 17 hold_0_17 + 18 hold_0_18 + 19 hold_0_19 + 20 hold_0_20
   + 21 hold_0_21 + 22 hold_0_22 + 60 switch_0_1 <= 60
 edge_disable_constr2_0_1: - start_0 + start_1 - hold_0_1 - 2 hold_0_2
   - 3 hold_0_3 - 4 hold_0_4 - 5 hold_0_5 - 6 hold_0_6 - 7 hold_0_7
   - 8 hold_0_8 - 9 hold_0_9 - 10 hold_0_10 - 11 hold_0_11 - 12 hold_0_12
   - 13 hold_0_13 - 14 hold_0_14 - 15 hold_0_15 - 16 hold_0_16
   - 17 hold_0_17 - 18 hold_0_18 - 19 hold_0_19 - 20 hold_0_20
   - 21 hold_0_21 - 22 hold_0_22 + 60 switch_0_1 <= 60
 edge_disable_constr1_1_0: - start_0 + start_1 + hold_1_1 + 2 hold_1_2
   + 3 hold_1_3 + 4 hold_1_4 + 5 hold_1_5 + 6 hold_1_6 + 7 hold_1_7
   + 8 hold_1_8 + 9 hold_1_9 + 10 hold_1_10 + 11 hold_1_11 + 12 hold_1_12
   + 13 hold_1_13 + 14 hold_1_14 + 15 hold_1_15 + 16 hold_1_16
   + 17 hold_1_17 + 18 hold_1_18 + 19 hold_1_19 + 20 hold_1_20
   + 21 hold_1_21 + 22 hold_1_22 + 60 switch_1_0 <= 60
 edge_disable_constr2_1_0: start_0 - start_1 - hold_1_1 - 2 hold_1_2
   - 3 hold_1_3 - 4 hold_1_4 - 5 hold_1_5 - 6 hold_1_6 - 7 hold_1_7
   - 8 hold_1_8 - 9 hold_1_9 - 10 hold_1_10 - 11 hold_1_11 - 12 hold_1_12
   - 13 hold_1_13 - 14 hold_1_14 - 15 hold_1_15 - 16 hold_1_16
   - 17 hold_1_17 - 18 hold_1_18 - 19 hold_1_19 - 20 hold_1_20
   - 21 hold_1_21 - 22 hold_1_22 + 60 switch_1_0 <= 60
 edge_disable_constr1_0_2: start_0 - start_2 + hold_0_1 + 2 hold_0_2
   + 3 hold_0_3 + 4 hold_0_4 + 5 hold_0_5 + 6 hold_0_6 + 7 hold_0_7
   + 8 hold_0_8 + 9 hold_0_9 + 10 hold_0_10 + 11 hold_0_11 + 12 hold_0_12
   + 13 hold_0_13 + 14 hold_0_14 + 15 hold_0_15 + 16 hold_0_16
   + 17 hold_0_17 + 18 hold_0_18 + 19 hold_0_19 + 20 hold_0_20
   + 21 hold_0_21 + 22 hold_0_22 + 60 switch_0_2 <= 60
 edge_disable_constr2_0_2: - start_0 + start_2 - hold_0_1 - 2 hold_0_2
   - 3 hold_0_3 - 4 hold_0_4 - 5 hold_0_5 - 6 hold_0_6 - 7 hold_0_7
   - 8 hold_0_8 - 9 hold_0_9 - 10 hold_0_10 - 11 hold_0_11 - 12 hold_0_12
   - 13 hold_0_13 - 14 hold_0_14 - 15 hold_0_15 - 16 hold_0_16
   - 17 hold_0_17 - 18 hold_0_18 - 19 hold_0_19 - 20 hold_0_20
   - 21 hold_0_21 - 22 hold_0_22 + 60 switch_0_2 <= 60
 edge_disable_constr1_2_0: - start_0 + start_2 + hold_2_1 + 2 hold_2_2
   + 3 hold_2_3 + 4 hold_2_4 + 5 hold_2_5 + 6 hold_2_6 + 7 hold_2_7
   + 8 hold_2_8 + 9 hold_2_9 + 10 hold_2_10 + 11 hold_2_11 + 12 hold_2_12
   + 13 hold_2_13 + 14 hold_2_14 + 15 hold_2_15 + 16 hold_2_16
   + 17 hold_2_17 + 18 hold_2_18 + 19 hold_2_19 + 20 hold_2_20
   + 21 hold_2_21 + 22 hold_2_22 + 60 switch_2_0 <= 60
 edge_disable_constr2_2_0: start_0 - start_2 - hold_2_1 - 2 hold_2_2
   - 3 hold_2_3 - 4 hold_2_4 - 5 hold_2_5 - 6 hold_2_6 - 7 hold_2_7
   - 8 hold_2_8 - 9 hold_2_9 - 10 hold_2_10 - 11 hold_2_11 - 12 hold_2_12
   - 13 hold_2_13 - 14 hold_2_14 - 15 hold_2_15 - 16 hold_2_16
   - 17 hold_2_17 - 18 hold_2_18 - 19 hold_2_19 - 20 hold_2_20
   - 21 hold_2_21 - 22 hold_2_22 + 60 switch_2_0 <= 60
 edge_disable_constr1_0_3: start_0 - start_3 + hold_0_1 + 2 hold_0_2
   + 3 hold_0_3 + 4 hold_0_4 + 5 hold_0_5 + 6 hold_0_6 + 7 hold_0_7
   + 8 hold_0_8 + 9 hold_0_9 + 10 hold_0_10 + 11 hold_0_11 + 12 hold_0_12
   + 13 hold_0_13 + 14 hold_0_14 + 15 hold_0_15 + 16 hold_0_16
   + 17 hold_0_17 + 18 hold_0_18 + 19 hold_0_19 + 20 hold_0_20
   + 21 hold_0_21 + 22 hold_0_22 + 60 switch_0_3 <= 60
 edge_disable_constr2_0_3: - start_0 + start_3 - hold_0_1 - 2 hold_0_2
   - 3 hold_0_3 - 4 hold_0_4 - 5 hold_0_5 - 6 hold_0_6 - 7 hold_0_7
   - 8 hold_0_8 - 9 hold_0_9 - 10 hold_0_10 - 11 hold_0_11 - 12 hold_0_12
   - 13 hold_0_13 - 14 hold_0_14 - 15 hold_0_15 - 16 hold_0_16
   - 17 hold_0_17 - 18 hold_0_18 - 19 hold_0_19 - 20 hold_0_20
   - 21 hold_0_21 - 22 hold_0_22 + 60 switch_0_3 <= 60
 edge_disable_constr1_3_0: - start_0 + start_3 + hold_3_1 + 2 hold_3_2
   + 3 hold_3_3 + 4 hold_3_4 + 5 hold_3_5 + 6 hold_3_6 + 7 hold_3_7
   + 8 hold_3_8 + 9 hold_3_9 + 10 hold_3_10 + 11 hold_3_11 + 12 hold_3_12
   + 13 hold_3_13 + 14 hold_3_14 + 15 hold_3_15 + 16 hold_3_16
   + 17 hold_3_17 + 18 hold_3_18 + 19 hold_3_19 + 20 hold_3_20
   + 21 hold_3_21 + 22 hold_3_22 + 60 switch_3_0 <= 60
 edge_disable_constr2_3_0: start_0 - start_3 - hold_3_1 - 2 hold_3_2
   - 3 hold_3_3 - 4 hold_3_4 - 5 hold_3_5 - 6 hold_3_6 - 7 hold_3_7
   - 8 hold_3_8 - 9 hold_3_9 - 10 hold_3_10 - 11 hold_3_11 - 12 hold_3_12
   - 13 hold_3_13 - 14 hold_3_14 - 15 hold_3_15 - 16 hold_3_16
   - 17 hold_3_17 - 18 hold_3_18 - 19 hold_3_19 - 20 hold_3_20
   - 21 hold_3_21 - 22 hold_3_22 + 60 switch_3_0 <= 60
 edge_disable_constr1_1_2: start_1 - start_2 + hold_1_1 + 2 hold_1_2
   + 3 hold_1_3 + 4 hold_1_4 + 5 hold_1_5 + 6 hold_1_6 + 7 hold_1_7
   + 8 hold_1_8 + 9 hold_1_9 + 10 hold_1_10 + 11 hold_1_11 + 12 hold_1_12
   + 13 hold_1_13 + 14 hold_1_14 + 15 hold_1_15 + 16 hold_1_16
   + 17 hold_1_17 + 18 hold_1_18 + 19 hold_1_19 + 20 hold_1_20
   + 21 hold_1_21 + 22 hold_1_22 + 60 switch_1_2 <= 60
 edge_disable_constr2_1_2: - start_1 + start_2 - hold_1_1 - 2 hold_1_2
   - 3 hold_1_3 - 4 hold_1_4 - 5 hold_1_5 - 6 hold_1_6 - 7 hold_1_7
   - 8 hold_1_8 - 9 hold_1_9 - 10 hold_1_10 - 11 hold_1_11 - 12 hold_1_12
   - 13 hold_1_13 - 14 hold_1_14 - 15 hold_1_15 - 16 hold_1_16
   - 17 hold_1_17 - 18 hold_1_18 - 19 hold_1_19 - 20 hold_1_20
   - 21 hold_1_21 - 22 hold_1_22 + 60 switch_1_2 <= 60
 edge_disable_constr1_2_1: - start_1 + start_2 + hold_2_1 + 2 hold_2_2
   + 3 hold_2_3 + 4 hold_2_4 + 5 hold_2_5 + 6 hold_2_6 + 7 hold_2_7
   + 8 hold_2_8 + 9 hold_2_9 + 10 hold_2_10 + 11 hold_2_11 + 12 hold_2_12
   + 13 hold_2_13 + 14 hold_2_14 + 15 hold_2_15 + 16 hold_2_16
   + 17 hold_2_17 + 18 hold_2_18 + 19 hold_2_19 + 20 hold_2_20
   + 21 hold_2_21 + 22 hold_2_22 + 60 switch_2_1 <= 60
 edge_disable_constr2_2_1: start_1 - start_2 - hold_2_1 - 2 hold_2_2
   - 3 hold_2_3 - 4 hold_2_4 - 5 hold_2_5 - 6 hold_2_6 - 7 hold_2_7
   - 8 hold_2_8 - 9 hold_2_9 - 10 hold_2_10 - 11 hold_2_11 - 12 hold_2_12
   - 13 hold_2_13 - 14 hold_2_14 - 15 hold_2_15 - 16 hold_2_16
   - 17 hold_2_17 - 18 hold_2_18 - 19 hold_2_19 - 20 hold_2_20
   - 21 hold_2_21 - 22 hold_2_22 + 60 switch_2_1 <= 60
 edge_disable_constr1_1_3: start_1 - start_3 + hold_1_1 + 2 hold_1_2
   + 3 hold_1_3 + 4 hold_1_4 + 5 hold_1_5 + 6 hold_1_6 + 7 hold_1_7
   + 8 hold_1_8 + 9 hold_1_9 + 10 hold_1_10 + 11 hold_1_11 + 12 hold_1_12
   + 13 hold_1_13 + 14 hold_1_14 + 15 hold_1_15 + 16 hold_1_16
   + 17 hold_1_17 + 18 hold_1_18 + 19 hold_1_19 + 20 hold_1_20
   + 21 hold_1_21 + 22 hold_1_22 + 60 switch_1_3 <= 60
 edge_disable_constr2_1_3: - start_1 + start_3 - hold_1_1 - 2 hold_1_2
   - 3 hold_1_3 - 4 hold_1_4 - 5 hold_1_5 - 6 hold_1_6 - 7 hold_1_7
   - 8 hold_1_8 - 9 hold_1_9 - 10 hold_1_10 - 11 hold_1_11 - 12 hold_1_12
   - 13 hold_1_13 - 14 hold_1_14 - 15 hold_1_15 - 16 hold_1_16
   - 17 hold_1_17 - 18 hold_1_18 - 19 hold_1_19 - 20 hold_1_20
   - 21 hold_1_21 - 22 hold_1_22 + 60 switch_1_3 <= 60
 edge_disable_constr1_3_1: - start_1 + start_3 + hold_3_1 + 2 hold_3_2
   + 3 hold_3_3 + 4 hold_3_4 + 5 hold_3_5 + 6 hold_3_6 + 7 hold_3_7
   + 8 hold_3_8 + 9 hold_3_9 + 10 hold_3_10 + 11 hold_3_11 + 12 hold_3_12
   + 13 hold_3_13 + 14 hold_3_14 + 15 hold_3_15 + 16 hold_3_16
   + 17 hold_3_17 + 18 hold_3_18 + 19 hold_3_19 + 20 hold_3_20
   + 21 hold_3_21 + 22 hold_3_22 + 60 switch_3_1 <= 60
 edge_disable_constr2_3_1: start_1 - start_3 - hold_3_1 - 2 hold_3_2
   - 3 hold_3_3 - 4 hold_3_4 - 5 hold_3_5 - 6 hold_3_6 - 7 hold_3_7
   - 8 hold_3_8 - 9 hold_3_9 - 10 hold_3_10 - 11 hold_3_11 - 12 hold_3_12
   - 13 hold_3_13 - 14 hold_3_14 - 15 hold_3_15 - 16 hold_3_16
   - 17 hold_3_17 - 18 hold_3_18 - 19 hold_3_19 - 20 hold_3_20
   - 21 hold_3_21 - 22 hold_3_22 + 60 switch_3_1 <= 60
 edge_disable_constr1_2_3: start_2 - start_3 + hold_2_1 + 2 hold_2_2
   + 3 hold_2_3 + 4 hold_2_4 + 5 hold_2_5 + 6 hold_2_6 + 7 hold_2_7
   + 8 hold_2_8 + 9 hold_2_9 + 10 hold_2_10 + 11 hold_2_11 + 12 hold_2_12
   + 13 hold_2_13 + 14 hold_2_14 + 15 hold_2_15 + 16 hold_2_16
   + 17 hold_2_17 + 18 hold_2_18 + 19 hold_2_19 + 20 hold_2_20
   + 21 hold_2_21 + 22 hold_2_22 + 60 switch_2_3 <= 60
 edge_disable_constr2_2_3: - start_2 + start_3 - hold_2_1 - 2 hold_2_2
   - 3 hold_2_3 - 4 hold_2_4 - 5 hold_2_5 - 6 hold_2_6 - 7 hold_2_7
   - 8 hold_2_8 - 9 hold_2_9 - 10 hold_2_10 - 11 hold_2_11 - 12 hold_2_12
   - 13 hold_2_13 - 14 hold_2_14 - 15 hold_2_15 - 16 hold_2_16
   - 17 hold_2_17 - 18 hold_2_18 - 19 hold_2_19 - 20 hold_2_20
   - 21 hold_2_21 - 22 hold_2_22 + 60 switch_2_3 <= 60
 edge_disable_constr1_3_2: - start_2 + start_3 + hold_3_1 + 2 hold_3_2
   + 3 hold_3_3 + 4 hold_3_4 + 5 hold_3_5 + 6 hold_3_6 + 7 hold_3_7
   + 8 hold_3_8 + 9 hold_3_9 + 10 hold_3_10 + 11 hold_3_11 + 12 hold_3_12
   + 13 hold_3_13 + 14 hold_3_14 + 15 hold_3_15 + 16 hold_3_16
   + 17 hold_3_17 + 18 hold_3_18 + 19 hold_3_19 + 20 hold_3_20
   + 21 hold_3_21 + 22 hold_3_22 + 60 switch_3_2 <= 60
 edge_disable_constr2_3_2: start_2 - start_3 - hold_3_1 - 2 hold_3_2
   - 3 hold_3_3 - 4 hold_3_4 - 5 hold_3_5 - 6 hold_3_6 - 7 hold_3_7
   - 8 hold_3_8 - 9 hold_3_9 - 10 hold_3_10 - 11 hold_3_11 - 12 hold_3_12
   - 13 hold_3_13 - 14 hold_3_14 - 15 hold_3_15 - 16 hold_3_16
   - 17 hold_3_17 - 18 hold_3_18 - 19 hold_3_19 - 20 hold_3_20
   - 21 hold_3_21 - 22 hold_3_22 + 60 switch_3_2 <= 60
 edge_flow_constr_source_0: flow_source_0 - 5e+08 switch_source_0 <= 0
 edge_flow_constr_source_1: flow_source_1 - 5e+08 switch_source_1 <= 0
 edge_flow_constr_source_2: flow_source_2 - 5e+08 switch_source_2 <= 0
 edge_flow_constr_source_3: flow_source_3 - 5e+08 switch_source_3 <= 0
 edge_flow_constr_0_sink: flow_0_sink - 5e+08 switch_0_sink <= 0
 edge_flow_constr_1_sink: flow_1_sink - 5e+08 switch_1_sink <= 0
 edge_flow_constr_2_sink: flow_2_sink - 5e+08 switch_2_sink <= 0
 edge_flow_constr_3_sink: flow_3_sink - 5e+08 switch_3_sink <= 0
 edge_flow_constr_0_1: flow_0_1 - 75120.19230769231 switch_0_1 <= 0
 edge_flow_constr_1_0: flow_1_0 - 75120.19230769231 switch_1_0 <= 0
 edge_flow_constr_0_2: flow_0_2 - 75120.19230769231 switch_0_2 <= 0
 edge_flow_constr_2_0: flow_2_0 - 75120.19230769231 switch_2_0 <= 0
 edge_flow_constr_0_3: flow_0_3 - 75120.19230769231 switch_0_3 <= 0
 edge_flow_constr_3_0: flow_3_0 - 75120.19230769231 switch_3_0 <= 0
 edge_flow_constr_1_2: flow_1_2 - 75120.19230769231 switch_1_2 <= 0
 edge_flow_constr_2_1: flow_2_1 - 75120.19230769231 switch_2_1 <= 0
 edge_flow_constr_1_3: flow_1_3 - 75120.19230769231 switch_1_3 <= 0
 edge_flow_constr_3_1: flow_3_1 - 75120.19230769231 switch_3_1 <= 0
 edge_flow_constr_2_3: flow_2_3 - 75120.19230769231 switch_2_3 <= 0
 edge_flow_constr_3_2: flow_3_2 - 75120.19230769231 switch_3_2 <= 0
Bounds
 start_0 <= 59
 start_1 <= 59
 start_2 <= 59
 start_3 <= 59
Binaries
 hold_0_1 hold_0_2 hold_0_3 hold_0_4 hold_0_5 hold_0_6 hold_0_7 hold_0_8
 hold_0_9 hold_0_10 hold_0_11 hold_0_12 hold_0_13 hold_0_14 hold_0_15
 hold_0_16 hold_0_17 hold_0_18 hold_0_19 hold_0_20 hold_0_21 hold_0_22
 hold_1_1 hold_1_2 hold_1_3 hold_1_4 hold_1_5 hold_1_6 hold_1_7 hold_1_8
 hold_1_9 hold_1_10 hold_1_11 hold_1_12 hold_1_13 hold_1_14 hold_1_15
 hold_1_16 hold_1_17 hold_1_18 hold_1_19 hold_1_20 hold_1_21 hold_1_22
 hold_2_1 hold_2_2 hold_2_3 hold_2_4 hold_2_5 hold_2_6 hold_2_7 hold_2_8
 hold_2_9 hold_2_10 hold_2_11 hold_2_12 hold_2_13 hold_2_14 hold_2_15
 hold_2_16 hold_2_17 hold_2_18 hold_2_19 hold_2_20 hold_2_21 hold_2_22
 hold_3_1 hold_3_2 hold_3_3 hold_3_4 hold_3_5 hold_3_6 hold_3_7 hold_3_8
 hold_3_9 hold_3_10 hold_3_11 hold_3_12 hold_3_13 hold_3_14 hold_3_15
 hold_3_16 hold_3_17 hold_3_18 hold_3_19 hold_3_20 hold_3_21 hold_3_22
 switch_source_0 switch_source_1 switch_source_2 switch_source_3
 switch_0_sink switch_1_sink switch_2_sink switch_3_sink switch_0_1
 switch_1_0 switch_0_2 switch_2_0 switch_0_3 switch_3_0 switch_1_2
 switch_2_1 switch_1_3 switch_3_1 switch_2_3 switch_3_2
Generals
 start_0 start_1 start_2 start_3
End
