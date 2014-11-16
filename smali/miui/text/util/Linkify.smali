.class public Lmiui/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# static fields
.field public static final CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final CHINESE_TIME_PATTERN_STRING:Ljava/lang/String; = "(((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5))?(2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))|((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|(\\s)+)((2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))))|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))?)"

.field public static final ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final ENGLISH_TIME_PATTERN_STRING:Ljava/lang/String; = "(((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+,?|(,\\s*))(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))|(((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9]))|(((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9]))|((\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))))|((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+(,|([Oo][Nn]\\s+))?|(,\\s*))(\\b(([Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Tt][Hh][Uu][Rr]|[Ff][Rr][Ii]|[Ss][Uu][Nn])((\\.)|([Dd][Aa][Yy]))?|[Ww][Ee][Dd]((\\.)|([Nn][Ee][Ss][Dd][Aa][Yy]))?|[Ss][Aa][Tt]((\\.)|([Uu][Rr][Dd][Aa][Yy]))?)))|(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?)))))|(((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM])))"

.field public static TIME_PHRASES:I = 0x0

.field public static final TO_PATTERN_STRING:Ljava/lang/String; = "((\\s+[tT][oO]\\s+)|(\\s*[-\u5230\u81f3]\\s*))"

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sput-object v0, Lmiui/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 28
    sget-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sput-object v0, Lmiui/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 36
    sget-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    sput-object v0, Lmiui/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 45
    const-string v0, "(((((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5))?(2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))|((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|(\\s)+)((2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))))|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))?))(((\\s+[tT][oO]\\s+)|(\\s*[-\u5230\u81f3]\\s*))((((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5))?(2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))|((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|(\\s)+)((2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))))|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))?)))?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/text/util/Linkify;->CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "(((((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+,?|(,\\s*))(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))|(((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9]))|(((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9]))|((\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))))|((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+(,|([Oo][Nn]\\s+))?|(,\\s*))(\\b(([Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Tt][Hh][Uu][Rr]|[Ff][Rr][Ii]|[Ss][Uu][Nn])((\\.)|([Dd][Aa][Yy]))?|[Ww][Ee][Dd]((\\.)|([Nn][Ee][Ss][Dd][Aa][Yy]))?|[Ss][Aa][Tt]((\\.)|([Uu][Rr][Dd][Aa][Yy]))?)))|(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?)))))|(((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))))(((\\s+[tT][oO]\\s+)|(\\s*[-\u5230\u81f3]\\s*))((((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+,?|(,\\s*))(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))|(((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9]))|(((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9]))|((\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))))|((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+(,|([Oo][Nn]\\s+))?|(,\\s*))(\\b(([Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Tt][Hh][Uu][Rr]|[Ff][Rr][Ii]|[Ss][Uu][Nn])((\\.)|([Dd][Aa][Yy]))?|[Ww][Ee][Dd]((\\.)|([Nn][Ee][Ss][Dd][Aa][Yy]))?|[Ss][Aa][Tt]((\\.)|([Uu][Rr][Dd][Aa][Yy]))?)))|(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?)))))|(((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM])))))?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/text/util/Linkify;->ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const/16 v0, 0x10

    sput v0, Lmiui/text/util/Linkify;->TIME_PHRASES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 10
    .parameter "text"
    .parameter "mask"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 75
    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    .line 76
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 79
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    sget v1, Lmiui/text/util/Linkify;->TIME_PHRASES:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 82
    sget-object v2, Lmiui/text/util/Linkify;->ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "time:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 83
    sget-object v2, Lmiui/text/util/Linkify;->CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "time:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 86
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 87
    sget-object v2, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lmiui/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 92
    :cond_3
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    .line 93
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 98
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    .line 99
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "tel:"

    aput-object v4, v3, v1

    sget-object v4, Lmiui/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Lmiui/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 104
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 105
    invoke-static {v0, p0}, Lmiui/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 108
    :cond_6
    invoke-static {v0}, Lmiui/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 111
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 114
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$LinkSpec;

    .line 115
    .local v8, link:Landroid/text/util/Linkify$LinkSpec;
    iget-object v1, v8, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/Linkify$LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Lmiui/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 118
    .end local v8           #link:Landroid/text/util/Linkify$LinkSpec;
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 0
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 123
    invoke-static {p0, p1, p2, p3}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 124
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 131
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 140
    return-void
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-static {p0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 135
    return-void
.end method
