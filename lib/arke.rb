# frozen_string_literal: true

require "clamp"
require "rbtree"
require "json"
require "openssl"
require "ostruct"
require "yaml"
require "colorize"
require "em-synchrony"
require "em-synchrony/em-http"
require "faraday"
require "faraday_middleware"
require "faye/websocket"

require "binance"
require "bitx"

module Arke; end

require "arke/helpers/precision"
require "arke/helpers/commands"
require "arke/helpers/splitter"
require "arke/helpers/spread"
require "arke/helpers/flags"

require "arke/configuration"
require "arke/log"
require "arke/reactor"
require "arke/exchange"
require "arke/strategy"
require "arke/market"
require "arke/action"
require "arke/order"
require "arke/trade"
require "arke/action_executor"
require "arke/action_scheduler"
require "arke/influxdb"
require "arke/recorder/reactor"
require "arke/recorder/storage/json"
require "arke/recorder/storage/influx"
require "arke/influxdb"

require "arke/orderbook/base"
require "arke/orderbook/orderbook"
require "arke/orderbook/aggregated"
require "arke/orderbook/open_orders"

require "arke/strategy/base"
require "arke/strategy/copy"
require "arke/strategy/fixedprice"
require "arke/strategy/microtrades"
require "arke/strategy/orderback"
require "arke/strategy/strategy1"

require "arke/exchange/base"
require "arke/exchange/binance"
require "arke/exchange/bitfaker"
require "arke/exchange/bitfinex"
require "arke/exchange/hitbtc"
require "arke/exchange/huobi"
require "arke/exchange/kraken"
require "arke/exchange/luno"
require "arke/exchange/okex"
require "arke/exchange/rubykube"

require "arke/command"
require "arke/command/console"
require "arke/command/recorder"
require "arke/command/strategy"
require "arke/command/show"
require "arke/command/start"
require "arke/command/version"
require "arke/command/root"
