.class public Lcn/xutils/commons/time/FastDateParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"

# interfaces
.implements Lcn/xutils/commons/time/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/time/FastDateParser$StrategyParser;,
        Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;,
        Lcn/xutils/commons/time/FastDateParser$Strategy;,
        Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;,
        Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;,
        Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;,
        Lcn/xutils/commons/time/FastDateParser$NumberStrategy;,
        Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;,
        Lcn/xutils/commons/time/FastDateParser$PatternStrategy;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final HOUR12_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final HOUR24_OF_DAY_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MILLISECOND_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lcn/xutils/commons/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final century:I

.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private transient patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;",
            ">;"
        }
    .end annotation
.end field

.field private final startYear:I

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static bridge synthetic -$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$madjustYear(Lcn/xutils/commons/time/FastDateParser;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcn/xutils/commons/time/FastDateParser;->adjustYear(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStrategy(Lcn/xutils/commons/time/FastDateParser;CILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/xutils/commons/time/FastDateParser;->getStrategy(CILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLONGER_FIRST_LOWERCASE()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smappendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/xutils/commons/time/FastDateParser;->appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisFormatLetter(C)Z
    .locals 0

    invoke-static {p0}, Lcn/xutils/commons/time/FastDateParser;->isFormatLetter(C)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsimpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lcn/xutils/commons/time/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    .line 114
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    .line 647
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 871
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$1;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1036
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$2;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcn/xutils/commons/time/FastDateParser$2;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1043
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1044
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1045
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1046
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1047
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1048
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$3;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$3;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_WEEK_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1055
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1056
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1057
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$4;

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$4;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1064
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$5;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$5;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR12_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1071
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1072
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->MINUTE_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1073
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->SECOND_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 1074
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDateParser;->MILLISECOND_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/xutils/commons/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 129
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    .line 145
    const-string v0, "timeZone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 146
    invoke-static {p3}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    .line 148
    invoke-static {p2, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 151
    .local v1, "definingCalendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 152
    invoke-virtual {v1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "centuryStartYear":I
    goto :goto_0

    .line 154
    .end local v0    # "centuryStartYear":I
    :cond_0
    sget-object v3, Lcn/xutils/commons/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x0

    .restart local v0    # "centuryStartYear":I
    goto :goto_0

    .line 158
    .end local v0    # "centuryStartYear":I
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x50

    .line 161
    .restart local v0    # "centuryStartYear":I
    :goto_0
    div-int/lit8 v2, v0, 0x64

    mul-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcn/xutils/commons/time/FastDateParser;->century:I

    .line 162
    sub-int v2, v0, v2

    iput v2, p0, Lcn/xutils/commons/time/FastDateParser;->startYear:I

    .line 164
    invoke-direct {p0, v1}, Lcn/xutils/commons/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 165
    return-void
.end method

.method private adjustYear(I)I
    .locals 2
    .param p1, "twoDigitYear"    # I

    .line 511
    iget v0, p0, Lcn/xutils/commons/time/FastDateParser;->century:I

    add-int/2addr v0, p1

    .line 512
    .local v0, "trial":I
    iget v1, p0, Lcn/xutils/commons/time/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x64

    :goto_0
    return v1
.end method

.method private static appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "field"    # I
    .param p3, "regex"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            "I",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 493
    .local v1, "actualLocale":Ljava/util/Locale;
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v2

    .line 494
    .local v2, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/TreeSet;

    sget-object v4, Lcn/xutils/commons/time/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 495
    .local v3, "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    new-instance v4, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v3, v0}, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda0;-><init>(Ljava/util/Locale;Ljava/util/TreeSet;Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 501
    new-instance v4, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda1;

    invoke-direct {v4, p3}, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->forEach(Ljava/util/function/Consumer;)V

    .line 502
    return-object v0
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .param p0, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lcn/xutils/commons/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    .line 655
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 656
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 657
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v1, v0, p0

    .line 659
    :cond_0
    aget-object v1, v0, p0

    monitor-exit v0

    return-object v1

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;
    .locals 3
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .line 670
    invoke-static {p1}, Lcn/xutils/commons/time/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 671
    .local v0, "cache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lcn/xutils/commons/time/FastDateParser$Strategy;>;"
    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    new-instance v2, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/time/FastDateParser;ILjava/util/Calendar;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v1
.end method

.method private getStrategy(CILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;
    .locals 3
    .param p1, "f"    # C
    .param p2, "width"    # I
    .param p3, "definingCalendar"    # Ljava/util/Calendar;

    .line 593
    const/4 v0, 0x2

    sparse-switch p1, :sswitch_data_0

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :sswitch_0
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 628
    :sswitch_1
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_WEEK_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 626
    :sswitch_2
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->SECOND_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 624
    :sswitch_3
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->MINUTE_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 622
    :sswitch_4
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 620
    :sswitch_5
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR12_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 618
    :sswitch_6
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 616
    :sswitch_7
    const/16 v0, 0x9

    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 637
    :sswitch_8
    if-ne p2, v0, :cond_0

    .line 638
    invoke-static {}, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->-$$Nest$sfgetISO_8601_3_STRATEGY()Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 642
    :cond_0
    :sswitch_9
    const/16 v0, 0xf

    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 633
    :sswitch_a
    if-le p2, v0, :cond_1

    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    :goto_0
    return-object v0

    .line 635
    :sswitch_b
    invoke-static {p2}, Lcn/xutils/commons/time/FastDateParser$ISO8601TimeZoneStrategy;->getStrategy(I)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 614
    :sswitch_c
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 612
    :sswitch_d
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->MILLISECOND_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 610
    :sswitch_e
    const/4 v1, 0x3

    if-lt p2, v1, :cond_2

    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    :goto_1
    return-object v0

    .line 607
    :sswitch_f
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 605
    :sswitch_10
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 603
    :sswitch_11
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 601
    :sswitch_12
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    .line 599
    :sswitch_13
    const/4 v0, 0x7

    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 597
    :sswitch_14
    sget-object v0, Lcn/xutils/commons/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lcn/xutils/commons/time/FastDateParser$Strategy;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_14
        0x45 -> :sswitch_13
        0x46 -> :sswitch_12
        0x47 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4b -> :sswitch_f
        0x4c -> :sswitch_e
        0x4d -> :sswitch_e
        0x53 -> :sswitch_d
        0x57 -> :sswitch_c
        0x58 -> :sswitch_b
        0x59 -> :sswitch_a
        0x5a -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "definingCalendar"    # Ljava/util/Calendar;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->patterns:Ljava/util/List;

    .line 176
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/time/FastDateParser$StrategyParser;-><init>(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;)V

    .line 178
    .local v0, "fm":Lcn/xutils/commons/time/FastDateParser$StrategyParser;
    :goto_0
    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->getNextStrategy()Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    move-result-object v1

    .line 179
    .local v1, "field":Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    if-nez v1, :cond_0

    .line 180
    nop

    .line 184
    .end local v1    # "field":Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    return-void

    .line 182
    .restart local v1    # "field":Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    :cond_0
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->patterns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v1    # "field":Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    goto :goto_0
.end method

.method private static isFormatLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 278
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$appendDisplayNames$0(Ljava/util/Locale;Ljava/util/TreeSet;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "actualLocale"    # Ljava/util/Locale;
    .param p1, "sorted"    # Ljava/util/TreeSet;
    .param p2, "values"    # Ljava/util/Map;
    .param p3, "k"    # Ljava/lang/String;
    .param p4, "v"    # Ljava/lang/Integer;

    .line 496
    invoke-virtual {p3, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "keyLc":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-interface {p2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_0
    return-void
.end method

.method static synthetic lambda$appendDisplayNames$1(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "regex"    # Ljava/lang/StringBuilder;
    .param p1, "symbol"    # Ljava/lang/String;

    .line 501
    invoke-static {p0, p1}, Lcn/xutils/commons/time/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 366
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 367
    .local v0, "definingCalendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 368
    return-void
.end method

.method private static simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 456
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 469
    :sswitch_0
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 476
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    :cond_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 316
    instance-of v0, p1, Lcn/xutils/commons/time/FastDateParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    return v1

    .line 319
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/time/FastDateParser;

    .line 320
    .local v0, "other":Lcn/xutils/commons/time/FastDateParser;
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v3, v0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    iget-object v3, v0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 303
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 295
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 330
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method synthetic lambda$getLocaleSpecificStrategy$2$cn-xutils-commons-time-FastDateParser(ILjava/util/Calendar;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateParser$Strategy;
    .locals 2
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;
    .param p3, "k"    # Ljava/util/Locale;

    .line 671
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    new-instance v0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v0, p1, p2, v1}, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    :goto_0
    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 384
    .local v0, "pp":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 385
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 387
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v3, Lcn/xutils/commons/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 391
    :cond_0
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 393
    :cond_1
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 419
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 420
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 422
    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .locals 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "calendar"    # Ljava/util/Calendar;

    .line 440
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 441
    .local v0, "lt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    .line 443
    .local v1, "strategyAndWidth":Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    invoke-virtual {v1, v0}, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->getMaxWidth(Ljava/util/ListIterator;)I

    move-result v8

    .line 444
    .local v8, "maxWidth":I
    iget-object v2, v1, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->strategy:Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcn/xutils/commons/time/FastDateParser$Strategy;->parse(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    const/4 v2, 0x0

    return v2

    .line 447
    .end local v1    # "strategyAndWidth":Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    .end local v8    # "maxWidth":I
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p1}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 401
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringAll()Ljava/lang/String;
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateParser [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", century="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser;->century:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser;->startYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", patterns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser;->patterns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
