.class Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;
.super Lcn/xutils/commons/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    }
.end annotation


# static fields
.field private static final GMT_OPTION:Ljava/lang/String; = "GMT[+-]\\d{1,2}:\\d{2}"

.field private static final ID:I = 0x0

.field private static final RFC_822_TIME_ZONE:Ljava/lang/String; = "[+-]\\d{4}"


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final tzNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 14
    .param p1, "locale"    # Ljava/util/Locale;

    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;-><init>(Lcn/xutils/commons/time/FastDateParser$PatternStrategy-IA;)V

    .line 889
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    .line 912
    invoke-static {p1}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$sfgetLONGER_FIRST_LOWERCASE()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 919
    .local v1, "sorted":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 920
    .local v2, "zones":[[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 922
    .local v6, "zoneNames":[Ljava/lang/String;
    aget-object v7, v6, v4

    .line 923
    .local v7, "tzId":Ljava/lang/String;
    const-string v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 924
    goto :goto_3

    .line 926
    :cond_0
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 929
    .local v8, "tz":Ljava/util/TimeZone;
    new-instance v9, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v9, v8, v4}, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 930
    .local v9, "standard":Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    move-object v10, v9

    .line 931
    .local v10, "tzInfo":Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    array-length v12, v6

    if-ge v11, v12, :cond_2

    .line 932
    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 938
    :pswitch_1
    move-object v10, v9

    .line 939
    goto :goto_2

    .line 935
    :pswitch_2
    new-instance v12, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;

    const/4 v13, 0x1

    invoke-direct {v12, v8, v13}, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    move-object v10, v12

    .line 936
    nop

    .line 943
    :goto_2
    aget-object v12, v6, v11

    if-eqz v12, :cond_1

    .line 944
    aget-object v12, v6, v11

    invoke-virtual {v12, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 947
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 948
    iget-object v13, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v13, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .end local v12    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 920
    .end local v6    # "zoneNames":[Ljava/lang/String;
    .end local v7    # "tzId":Ljava/lang/String;
    .end local v8    # "tz":Ljava/util/TimeZone;
    .end local v9    # "standard":Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v10    # "tzInfo":Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v11    # "i":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 955
    :cond_3
    new-instance v3, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 956
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p0, v0}, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    .line 958
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "zoneName"    # Ljava/lang/String;

    .line 955
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$smsimpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method setCalendar(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 6
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "timeZone"    # Ljava/lang/String;

    .line 965
    invoke-static {p3}, Lcn/xutils/commons/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 966
    .local v0, "tz":Ljava/util/TimeZone;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 969
    :cond_0
    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "lowerCase":Ljava/lang/String;
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 971
    .local v2, "tzInfo":Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    if-nez v2, :cond_1

    .line 973
    iget-object v3, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 975
    :cond_1
    const/16 v3, 0x10

    iget v4, v2, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 976
    iget-object v3, v2, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {p2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 978
    .end local v1    # "lowerCase":Ljava/lang/String;
    .end local v2    # "tzInfo":Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneStrategy [locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tzNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
