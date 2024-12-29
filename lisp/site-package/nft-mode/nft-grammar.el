;; -*- lexical-binding: t; -*-

(defvar nft-grammar-bison-tokens
  '(
    (JUNK . "junk")
    (NEWLINE . "newline")
    (COLON . "colon")
    (SEMICOLON . "semicolon")
    (COMMA . "comma")
    (DOT . ".")

    (EQ . "==")
    (NEQ . "!=")
    (LT . "<")
    (GT . ">")
    (GTE . ">=")
    (LTE . "<=")
    (LSHIFT . "<<")
    (RSHIFT . ">>")
    (AMPERSAND . "&")
    (CARET . "^")
    (NOT . "!")
    (SLASH . "/")
    (ASTERISK . "*")
    (DASH . "-")
    (AT . "@")
    (VMAP . "vmap")

    (PLUS . "+")

    (INCLUDE . "include")
    (DEFINE . "define")
    (REDEFINE . "redefine")
    (UNDEFINE . "undefine")

    (FIB . "fib")

    (SOCKET . "socket")
    (TRANSPARENT . "transparent")
    (WILDCARD . "wildcard")
    (CGROUPV2 .	"cgroupv2")

    (TPROXY . "tproxy")

    (OSF . "osf")

    (SYNPROXY . "synproxy")
    (MSS . "mss")
    (WSCALE . "wscale")

    (TYPEOF . "typeof")

    (HOOK . "hook")
    (HOOKS . "hooks")
    (DEVICE . "device")
    (DEVICES . "devices")
    (TABLE . "table")
    (TABLES . "tables")
    (CHAIN . "chain")
    (CHAINS . "chains")
    (RULE . "rule")
    (RULES . "rules")
    (SETS . "sets")
    (SET . "set")
    (ELEMENT . "element")
    (MAP . "map")
    (MAPS . "maps")
    (FLOWTABLE . "flowtable")
    (HANDLE . "handle")
    (RULESET . "ruleset")
    (TRACE . "trace")

    (INET . "inet")
    (NETDEV . "netdev")

    (ADD . "add")
    (UPDATE . "update")
    (REPLACE . "replace")
    (CREATE . "create")
    (INSERT . "insert")
    (DELETE . "delete")
    (GET . "get")
    (LIST . "list")
    (RESET . "reset")
    (FLUSH . "flush")
    (RENAME . "rename")
    (DESCRIBE . "describe")
    (IMPORT . "import")
    (EXPORT . "export")
    (DESTROY . "destroy")

    (MONITOR . "monitor")

    (ALL . "all")

    (ACCEPT . "accept")
    (DROP . "drop")
    (CONTINUE . "continue")
    (JUMP . "jump")
    (GOTO . "goto")
    (RETURN . "return")
    (TO . "to")

    (CONSTANT . "constant")
    (INTERVAL . "interval")
    (DYNAMIC . "dynamic")
    (AUTOMERGE . "auto-merge")
    (TIMEOUT . "timeout")
    (GC_INTERVAL . "gc-interval")
    (ELEMENTS . "elements")
    (EXPIRES . "expires")

    (POLICY . "policy")
    (MEMORY . "memory")
    (PERFORMANCE . "performance")
    (SIZE . "size")

    (FLOW . "flow")
    (OFFLOAD . "offload")
    (METER . "meter")
    (METERS . "meters")

    (FLOWTABLES . "flowtables")

    (LL_HDR . "ll")
    (NETWORK_HDR . "nh")
    (TRANSPORT_HDR . "th")

    (BRIDGE . "bridge")

    (ETHER . "ether")
    (SADDR . "saddr")
    (DADDR . "daddr")
    (TYPE . "type")

    (VLAN . "vlan")
    (ID . "id")
    (CFI . "cfi")
    (DEI . "dei")
    (PCP . "pcp")

    (ARP . "arp")
    (HTYPE . "htype")
    (PTYPE . "ptype")
    (HLEN . "hlen")
    (PLEN . "plen")
    (OPERATION . "operation")

    (IP . "ip")
    (HDRVERSION . "version")
    (HDRLENGTH . "hdrlength")
    (DSCP . "dscp")
    (ECN . "ecn")
    (LENGTH . "length")
    (FRAG_OFF . "frag-off")
    (TTL . "ttl")
    (PROTOCOL . "protocol")
    (CHECKSUM . "checksum")

    (PTR . "ptr")
    (VALUE . "value")

    (LSRR . "lsrr")
    (RR . "rr")
    (SSRR . "ssrr")
    (RA . "ra")

    (ICMP . "icmp")
    (CODE . "code")
    (SEQUENCE . "seq")
    (GATEWAY . "gateway")
    (MTU . "mtu")

    (IGMP . "igmp")
    (MRT . "mrt")

    (OPTIONS . "options")

    (IP6 . "ip6")
    (PRIORITY . "priority")
    (FLOWLABEL . "flowlabel")
    (NEXTHDR . "nexthdr")
    (HOPLIMIT . "hoplimit")

    (ICMP6 . "icmpv6")
    (PPTR . "param-problem")
    (MAXDELAY . "max-delay")
    (TADDR . "taddr")

    (AH . "ah")
    (RESERVED . "reserved")
    (SPI . "spi")

    (ESP . "esp")

    (COMP . "comp")
    (FLAGS . "flags")
    (CPI . "cpi")

    (PORT . "port")
    (UDP . "udp")
    (SPORT . "sport")
    (DPORT . "dport")
    (UDPLITE . "udplite")
    (CSUMCOV . "csumcov")

    (TCP . "tcp")
    (ACKSEQ . "ackseq")
    (DOFF . "doff")
    (WINDOW . "window")
    (URGPTR . "urgptr")
    (OPTION . "option")
    (ECHO . "echo")
    (EOL . "eol")
    (MPTCP . "mptcp")
    (NOP . "nop")
    (SACK . "sack")
    (SACK0 . "sack0")
    (SACK1 . "sack1")
    (SACK2 . "sack2")
    (SACK3 . "sack3")
    (SACK_PERM . "sack-permitted")
    (FASTOPEN . "fastopen")
    (MD5SIG . "md5sig")
    (TIMESTAMP . "timestamp")
    (COUNT . "count")
    (LEFT . "left")
    (RIGHT . "right")
    (TSVAL . "tsval")
    (TSECR . "tsecr")
    (SUBTYPE . "subtype")

    (DCCP . "dccp")

    (VXLAN . "vxlan")
    (VNI . "vni")

    (GRE . "gre")
    (GRETAP . "gretap")

    (GENEVE . "geneve")

    (SCTP . "sctp")
    (CHUNK . "chunk")
    (DATA . "data")
    (INIT . "init")
    (INIT_ACK . "init-ack")
    (HEARTBEAT . "heartbeat")
    (HEARTBEAT_ACK . "heartbeat-ack")
    (ABORT . "abort")
    (SHUTDOWN . "shutdown")
    (SHUTDOWN_ACK . "shutdown-ack")
    (ERROR . "error")
    (COOKIE_ECHO . "cookie-echo")
    (COOKIE_ACK . "cookie-ack")
    (ECNE . "ecne")
    (CWR . "cwr")
    (SHUTDOWN_COMPLETE . "shutdown-complete")
    (ASCONF_ACK . "asconf-ack")
    (FORWARD_TSN . "forward-tsn")
    (ASCONF . "asconf")
    (TSN . "tsn")
    (STREAM . "stream")
    (SSN . "ssn")
    (PPID . "ppid")
    (INIT_TAG . "init-tag")
    (A_RWND . "a-rwnd")
    (NUM_OSTREAMS . "num-outbound-streams")
    (NUM_ISTREAMS . "num-inbound-streams")
    (INIT_TSN . "initial-tsn")
    (CUM_TSN_ACK . "cum-tsn-ack")
    (NUM_GACK_BLOCKS . "num-gap-ack-blocks")
    (NUM_DUP_TSNS . "num-dup-tsns")
    (LOWEST_TSN . "lowest-tsn")
    (SEQNO . "seqno")
    (NEW_CUM_TSN . "new-cum-tsn")

    (VTAG . "vtag")

    (RT . "rt")
    (RT0 . "rt0")
    (RT2 . "rt2")
    (RT4 . "srh")
    (SEG_LEFT . "seg-left")
    (ADDR . "addr")
    (LAST_ENT . "last-entry")
    (TAG . "tag")
    (SID . "sid")

    (HBH . "hbh")

    (FRAG . "frag")
    (RESERVED2 . "reserved2")
    (MORE_FRAGMENTS . "more-fragments")

    (DST . "dst")

    (MH . "mh")

    (META . "meta")
    (MARK . "mark")
    (IIF . "iif")
    (IIFNAME . "iifname")
    (IIFTYPE . "iiftype")
    (OIF . "oif")
    (OIFNAME . "oifname")
    (OIFTYPE . "oiftype")
    (SKUID . "skuid")
    (SKGID . "skgid")
    (NFTRACE . "nftrace")
    (RTCLASSID . "rtclassid")
    (IBRIPORT . "ibriport")
    (OBRIPORT . "obriport")
    (IBRIDGENAME . "ibrname")
    (OBRIDGENAME . "obrname")
    (PKTTYPE . "pkttype")
    (CPU . "cpu")
    (IIFGROUP . "iifgroup")
    (OIFGROUP . "oifgroup")
    (CGROUP . "cgroup")
    (TIME . "time")

    (CLASSID . "classid")
    (NEXTHOP . "nexthop")

    (CT . "ct")
    (L3PROTOCOL . "l3proto")
    (PROTO_SRC . "proto-src")
    (PROTO_DST . "proto-dst")
    (ZONE . "zone")
    (DIRECTION . "direction")
    (EVENT . "event")
    (EXPECTATION . "expectation")
    (EXPIRATION . "expiration")
    (HELPER . "helper")
    (LABEL . "label")
    (STATE . "state")
    (STATUS . "status")
    (ORIGINAL . "original")
    (REPLY . "reply")

    (COUNTER . "counter")
    (NAME . "name")
    (PACKETS . "packets")
    (BYTES . "bytes")
    (AVGPKT . "avgpkt")

    (LAST . "last")
    (NEVER . "never")

    (COUNTERS . "counters")
    (QUOTAS . "quotas")
    (LIMITS . "limits")
    (SYNPROXYS . "synproxys")
    (HELPERS . "helpers")

    (LOG . "log")
    (PREFIX . "prefix")
    (GROUP . "group")
    (SNAPLEN . "snaplen")
    (QUEUE_THRESHOLD . "queue-threshold")
    (LEVEL . "level")

    (LIMIT . "limit")
    (RATE . "rate")
    (BURST . "burst")
    (OVER . "over")
    (UNTIL . "until")

    (QUOTA . "quota")
    (USED . "used")

    (SECMARK . "secmark")
    (SECMARKS . "secmarks")

    (SECOND . "second")
    (MINUTE . "minute")
    (HOUR . "hour")
    (DAY . "day")
    (WEEK . "week")

    (_REJECT . "reject")
    (WITH . "with")
    (ICMPX . "icmpx")

    (SNAT . "snat")
    (DNAT . "dnat")
    (MASQUERADE . "masquerade")
    (REDIRECT . "redirect")
    (RANDOM . "random")
    (FULLY_RANDOM . "fully-random")
    (PERSISTENT . "persistent")

    (QUEUE . "queue")
    (QUEUENUM . "num")
    (BYPASS . "bypass")
    (FANOUT . "fanout")

    (DUP . "dup")
    (FWD . "fwd")

    (NUMGEN . "numgen")
    (INC . "inc")
    (MOD . "mod")
    (OFFSET . "offset")

    (JHASH . "jhash")
    (SYMHASH . "symhash")
    (SEED . "seed")

    (POSITION . "position")
    (INDEX . "index")
    (COMMENT . "comment")

    (XML . "xml")
    (JSON . "json")
    (VM . "vm")

    (NOTRACK . "notrack")

    (EXISTS . "exists")
    (MISSING . "missing")

    (EXTHDR . "exthdr")

    (IPSEC . "ipsec")
    (REQID . "reqid")
    (SPNUM . "spnum")

    (IN . "in")
    (OUT . "out")

    (XT . "xt")))

(defvar nft-grammar-table-families
  '(
    "arp"
    "bridge"
    "inet"
    "ip"
    "ip6"
    "netdev"
    ))

(defvar nft-grammar-meta-words
  '(
    "include"
    "define"
    "redefine"
    "undefine"
    ))

(defvar nft-grammar-entities
  '(
    "ruleset"
    "table"
    "chain"
    "quota"
    "map"
    "set"
    "flowtable"
    "rule"
    ))

(defvar nft-grammar-match-types
  '(
    "ah"
    "arp"
    "cgroup"
    "comp"
    "cpu"
    "ct"
    "daddr"
    "dccp"
    "dst"
    "esp"
    "ether"
    "frag"
    "hbh"
    "icmp"
    "icmp6"
    "icmpv6"
    "iif"
    "iifgroup"
    "iifname"
    "iiftype"
    "inet"
    "ip"
    "ip6"
    "ipv6"
    "l4proto"
    "length"
    "mark"
    "meta"
    "mh"
    "nfproto"
    "oif"
    "oifgroup"
    "oifname"
    "oiftype"
    "pkttype"
    "priority"
    "protocol"
    "rt"
    "rtclassid"
    "saddr"
    "sctp"
    "skgid"
    "skuid"
    "tcp"
    "udp"
    "udplite"
    "vlan"))

(defvar nft-grammar-match-info-ip
  '(
    "dscp"
    "length"
    "id"
    "frag-off"
    "ttl"
    "protocol"
    "checksum"
    "saddr"
    "daddr"
    "version"
    "hdrlength"))

(defvar nft-grammar-match-info-ipv6
  '(
    "dscp"
    "flowlabel"
    "length"
    "nexthdr"
    "hoplimit"
    "saddr"
    "daddr"
    "version"))

(defvar nft-grammar-match-info-tcp
  '(
    "dport"
    "sport"
    "sequence"
    "ackseq"
    "flags"
    "window"
    "checksum"
    "urgptr"
    "doff"))

(defvar nft-grammar-match-info-udp
  '(
    "dport"
    "sport"
    "length"
    "checksum"))

(defvar nft-grammar-match-info-udplite
  '(
    "dport"
    "sport"
    "checksum"))

(defvar nft-grammar-match-info-sctp
  '(
    "dport"
    "sport"
    "checksum"
    "vtag"
    "chunk"))

(defvar nft-grammar-match-info-dccp
  '(
    "dport"
    "sport"
    "type"))

(defvar nft-grammar-match-info-ah
  '(
    "hdrlength"
    "reserved"
    "spi"
    "sequence"))

(defvar nft-grammar-match-info-esp
  '(
    "spi"
    "sequence"))

(defvar nft-grammar-match-info-comp
  '(
    "nexthdr"
    "flags"
    "cpi"))

(defvar nft-grammar-match-info-icmp
  '(
    "type"
    "code"
    "checksum"
    "id"
    "sequence"
    "mtu"
    "gateway"))

(defvar nft-grammar-match-info-icmpv6
  '(
    "type"
    "code"
    "checksum"
    "id"
    "sequence"
    "mtu"
    "max-delay"))

(defvar nft-grammar-match-info-ether
  '(
    "saddr"
    "type"))

(defvar nft-grammar-match-info-dst
  '(
    "nexthdr"
    "hdrlength"))

(defvar nft-grammar-match-info-frag
  '(
    "nexthdr"
    "reserved"
    "frag-off"
    "more-fragments"
    "id"))

(defvar nft-grammar-match-info-hbh
  '(
    "nexthdr"
    "hdrlength"))

(defvar nft-grammar-match-info-mh
  '(
    "nexthdr"
    "hdrlength"
    "type"
    "reserved"
    "checksum"))

(defvar nft-grammar-match-info-rt
  '(
    "nexthdr"
    "hdrlength"
    "type"
    "seg-left"))

(defvar nft-grammar-match-info-vlan
  '(
    "id"
    "cfi"
    "pcp"))

(defvar nft-grammar-match-info-arp
  '(
    "ptype"
    "htype"
    "hlen"
    "plen"
    "operation"))

(defvar nft-grammar-match-info-ct
  '(
    "state"
    "direction"
    "status"
    "mark"
    "expiration"
    "helper"
    "bytes"
    "packets"
    "saddr" "daddr" ; prefixed with ip
    "l3proto"
    "protocol"
    "proto-dst"
    "proto-src"
    "count"
    ; modifiers
    "original" "reply" ; for: bytes, packets, ip saddr, ip daddr, l3proto, protocol, proto-src, proto-dst
    "over"
    ; specifiers
    "ip"
    ))

(defvar nft-grammar-match-info-meta
  '(
    "iifname"
    "oifname"
    "iif"
    "oif"
    "iiftype"
    "oiftype"
    "length"
    "protocol"
    "nfproto"
    "l4proto"
    "mark"
    "priority" ; "set"
    "skuid"
    "skgid"
    "rtclassid"
    "pkttype"
    "cpu"
    "iifgroup"
    "oifgroup"
    "cgroup"
    ))

(defvar nft-grammar-hooks
  '(
    "ingress"
    "prerouting"
    "input"
    "forward"
    "output"
    "postrouting"
    "egress"
    ))

(defvar nft-grammar-chain-types
  '(
    "filter"
    "nat"
    "route"
    ))

(defvar nft-grammar-chain-named-priorities
  '(
    "raw"
    "srcnat"
    "filter"
    "dstnat"
    ))

(defvar nft-grammar-policies
  '(
    "accept"
    "drop"
    ))

(defvar nft-grammar-rule-actions
  '(
    "accept"
    "drop"
    "reject"
    "jump"
    "goto"
    "return"
    "masquerade"
    "snat"
    "dnat"
    ))


(defvar nft-grammar-rule-statements
  '(
    "accept"
    "drop"
    "reject"
    "queue"
    "continue"
    "jump"
    "goto"
    "return"
    "masquerade"
    "snat"
    "dnat"
    "log"
    "counter"
    "limit"
    ))


(defvar nft-grammar-commands
  '(
    "add"
    "update"
    "replace"
    "create"
    "insert"
    "delete"
    "get"
    "list"
    "reset"
    "flush"
    "rename"
    "describe"
    "import"
    "export"
    "destroy"
    "monitor"))


(defvar nft-grammar-match-aspects-regex
  (regexp-opt (seq-uniq
	       (append
		nft-grammar-match-info-vlan
		nft-grammar-match-info-arp
		nft-grammar-match-info-ct
		nft-grammar-match-info-meta
		nft-grammar-match-info-ip
		nft-grammar-match-info-ipv6
		nft-grammar-match-info-tcp
		nft-grammar-match-info-udp
		nft-grammar-match-info-udplite
		nft-grammar-match-info-sctp
		nft-grammar-match-info-dccp
		nft-grammar-match-info-ah
		nft-grammar-match-info-esp
		nft-grammar-match-info-comp
		nft-grammar-match-info-icmp
		nft-grammar-match-info-icmpv6
		nft-grammar-match-info-ether
		nft-grammar-match-info-dst
		nft-grammar-match-info-frag
		nft-grammar-match-info-hbh
		nft-grammar-match-info-mh
		nft-grammar-match-info-rt))
	      'symbols))

(provide 'nft-grammar)
