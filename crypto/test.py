#
#
# from mitmproxy import http
# from mitmproxy import *
#
# class writeToFile:
# 	def websocket_message(self, flow: mitmproxy.http.HTTPFlow):
#         	"""
#         	Called when a WebSocket message is received from the client or
#         	server. The most recent message will be flow.messages[-1]. The
#         	message is user-modifiable. Currently there are two types of
#         	messages, corresponding to the BINARY and TEXT frame types.
#         	"""
#         	print(f"websocket_message: {flow=}")
# addons = [writeToFile()]
"""Process individual messages from a WebSocket connection."""
import re
from mitmproxy import ctx, http
from mitmproxy.net.http.http1.assemble import assemble_request, assemble_response
import datetime
import json

bookServer2 = open('./bookserver02.txt', 'w')
tradingView = open('./tradingview.txt', 'w')
tickerserver = open('./tickerserver01.txt', 'w')
f = open('./test.txt', 'w')


def writeLog(message, output):
    temp=json.loads(message)
    x = {"time": str(datetime.datetime.now()), "message": temp}
    output.write(json.dumps(x))
    output.write("\n")


def websocket_message(flow: http.HTTPFlow):
    assert flow.websocket is not None  # make type checker happy

    if "/bookserver02" in flow.request.path:
        message = flow.websocket.messages[-1]
        print(len(flow.websocket.messages))
        if len(flow.websocket.messages)>60:
            flow.websocket.messages.pop(0)
        temp = message.content.decode('UTF-8')
        if len(temp) > 20:
            temp = temp[2:]
            writeLog(temp , bookServer2)
    if "socket.io/websocket" in flow.request.path:
        message = flow.websocket.messages[-1]
        temp = message.content.decode('UTF-8')
        if len(flow.websocket.messages)>60:
            flow.websocket.messages.pop(0)
        if len(temp) > 20:
            temp = temp[temp.find("{"):]
            writeLog(temp,tradingView)
    if "tickerserver01" in flow.request.path:
        message = flow.websocket.messages[-1]
        temp = message.content.decode('UTF-8')
        if len(flow.websocket.messages)>60:
            flow.websocket.messages.pop(0)
        if len(temp) > 20:
            temp = temp[temp.find("["):]
            writeLog(temp,tickerserver)

