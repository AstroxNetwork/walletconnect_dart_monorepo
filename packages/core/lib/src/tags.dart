enum Tags {
  unsupportedMethod(0),
  pairingDelete(1000),
  pairingDeleteResponse(1001),
  pairingPing(1002),
  pairingPingResponse(1003),
  sessionPropose(1100),
  sessionProposeResponse(1101),
  sessionSettle(1102),
  sessionSettleResponse(1103),
  sessionUpdate(1104),
  sessionUpdateResponse(1105),
  sessionExtend(1106),
  sessionExtendResponse(1107),
  sessionRequest(1108),
  sessionRequestResponse(1109),
  sessionEvent(1110),
  sessionEventResponse(1111),
  sessionDelete(1112),
  sessionDeleteResponse(1113),
  sessionPing(1114),
  sessionPingResponse(1115),
  chatInvite(2000),
  chatInviteResponse(2001),
  chatMessage(2002),
  chatMessageResponse(2003),
  chatLeave(2004),
  chatLeaveResponse(2005),
  chatPing(2006),
  chatPingResponse(2007),
  authRequest(3000),
  authRequestResponse(3001),

  //todo: Discuss: Should Tags be in specific SDKs?
  ;

  const Tags(this.id);

  final int id;
}
