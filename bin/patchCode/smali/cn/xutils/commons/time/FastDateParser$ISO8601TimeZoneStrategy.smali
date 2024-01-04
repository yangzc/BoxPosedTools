.class Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;
.super Lcn/xutils/commons/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final ISO_8601_1_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final ISO_8601_2_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final ISO_8601_3_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;


# direct methods
.method static bridge synthetic -$$Nest$sfgetISO_8601_3_STRATEGY()Lcn/xutils/commons/time/FastDateParser$Strategy;
    .locals 1

    sget-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1011
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1012
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1013
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 999
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;-><init>(Lcn/xutils/commons/time/FastDateParser$PatternStrategy-IA;)V

    .line 1000
    invoke-virtual {p0, p1}, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->createPattern(Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method static getStrategy(I)Lcn/xutils/commons/time/FastDateParser$Strategy;
    .locals 2
    .param p0, "tokenLen"    # I

    .line 1023
    packed-switch p0, :pswitch_data_0

    .line 1031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid number of X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :pswitch_0
    sget-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 1027
    :pswitch_1
    sget-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 1025
    :pswitch_2
    sget-object v0, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method setCalendar(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;

    .line 1008
    invoke-static {p3}, Lcn/xutils/commons/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1009
    return-void
.end method
