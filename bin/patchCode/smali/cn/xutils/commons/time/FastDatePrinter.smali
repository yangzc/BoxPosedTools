.class public Lcn/xutils/commons/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lcn/xutils/commons/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/time/FastDatePrinter$Rule;,
        Lcn/xutils/commons/time/FastDatePrinter$TextField;,
        Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;,
        Lcn/xutils/commons/time/FastDatePrinter$NumberRule;,
        Lcn/xutils/commons/time/FastDatePrinter$WeekYear;,
        Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;,
        Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;,
        Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;,
        Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;,
        Lcn/xutils/commons/time/FastDatePrinter$TwentyFourHourField;,
        Lcn/xutils/commons/time/FastDatePrinter$Iso8601_Rule;,
        Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;,
        Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNumberRule;,
        Lcn/xutils/commons/time/FastDatePrinter$CharacterLiteral;,
        Lcn/xutils/commons/time/FastDatePrinter$StringLiteral;,
        Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;,
        Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;,
        Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;,
        Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;
    }
.end annotation


# static fields
.field private static final EMPTY_RULE_ARRAY:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field private static final MAX_DIGITS:I = 0xa

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final locale:Ljava/util/Locale;

.field private transient maxLengthEstimate:I

.field private final pattern:Ljava/lang/String;

.field private transient rules:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static bridge synthetic -$$Nest$smappendDigits(Ljava/lang/Appendable;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/xutils/commons/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smappendFullDigits(Ljava/lang/Appendable;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/time/FastDatePrinter$Rule;

    sput-object v0, Lcn/xutils/commons/time/FastDatePrinter;->EMPTY_RULE_ARRAY:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

    .line 1314
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcn/xutils/commons/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    .line 159
    invoke-static {p3}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    .line 160
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->init()V

    .line 161
    return-void
.end method

.method private static appendDigits(Ljava/lang/Appendable;I)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 693
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 694
    return-void
.end method

.method private static appendFullDigits(Ljava/lang/Appendable;II)V
    .locals 5
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "value"    # I
    .param p2, "minFieldWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    const/16 v0, 0x2710

    const/16 v1, 0xa

    const/16 v2, 0x30

    if-ge p1, v0, :cond_4

    .line 712
    const/4 v0, 0x4

    .line 713
    .local v0, "nDigits":I
    const/16 v3, 0x3e8

    const/16 v4, 0x64

    if-ge p1, v3, :cond_0

    .line 714
    add-int/lit8 v0, v0, -0x1

    .line 715
    if-ge p1, v4, :cond_0

    .line 716
    add-int/lit8 v0, v0, -0x1

    .line 717
    if-ge p1, v1, :cond_0

    .line 718
    add-int/lit8 v0, v0, -0x1

    .line 723
    :cond_0
    sub-int v3, p2, v0

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 724
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 723
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 727
    .end local v3    # "i":I
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 729
    :pswitch_0
    div-int/lit16 v3, p1, 0x3e8

    add-int/2addr v3, v2

    int-to-char v3, v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 730
    rem-int/lit16 p1, p1, 0x3e8

    .line 732
    :pswitch_1
    if-lt p1, v4, :cond_2

    .line 733
    div-int/lit8 v3, p1, 0x64

    add-int/2addr v3, v2

    int-to-char v3, v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 734
    rem-int/lit8 p1, p1, 0x64

    goto :goto_1

    .line 736
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 739
    :goto_1
    :pswitch_2
    if-lt p1, v1, :cond_3

    .line 740
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 741
    rem-int/lit8 p1, p1, 0xa

    goto :goto_2

    .line 743
    :cond_3
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 746
    :goto_2
    :pswitch_3
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 748
    .end local v0    # "nDigits":I
    :goto_3
    goto :goto_7

    .line 752
    :cond_4
    new-array v0, v1, [C

    .line 753
    .local v0, "work":[C
    const/4 v1, 0x0

    .line 754
    .local v1, "digit":I
    :goto_4
    if-eqz p1, :cond_5

    .line 755
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "digit":I
    .local v3, "digit":I
    rem-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v2

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 756
    div-int/lit8 p1, p1, 0xa

    move v1, v3

    goto :goto_4

    .line 760
    .end local v3    # "digit":I
    .restart local v1    # "digit":I
    :cond_5
    :goto_5
    if-ge v1, p2, :cond_6

    .line 761
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 762
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 766
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    .line 767
    aget-char v2, v0, v1

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6

    .line 770
    .end local v0    # "work":[C
    .end local v1    # "digit":I
    :cond_7
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 585
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    :try_start_0
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->rules:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 586
    .local v3, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    invoke-interface {v3, p2, p1}, Lcn/xutils/commons/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v3    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_0
    goto :goto_1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcn/xutils/commons/exception/ExceptionUtils;->rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 591
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-object p2
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->maxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 1327
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1329
    .local v0, "key":Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcn/xutils/commons/time/FastDatePrinter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/xutils/commons/time/FastDatePrinter$$ExternalSyntheticLambda0;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private init()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcn/xutils/commons/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "rulesList":Ljava/util/List;, "Ljava/util/List<Lcn/xutils/commons/time/FastDatePrinter$Rule;>;"
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter;->EMPTY_RULE_ARRAY:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/xutils/commons/time/FastDatePrinter$Rule;

    iput-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->rules:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "len":I
    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 172
    iget-object v3, p0, Lcn/xutils/commons/time/FastDatePrinter;->rules:[Lcn/xutils/commons/time/FastDatePrinter$Rule;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcn/xutils/commons/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    iput v2, p0, Lcn/xutils/commons/time/FastDatePrinter;->maxLengthEstimate:I

    .line 176
    return-void
.end method

.method static synthetic lambda$getTimeZoneDisplay$0(Ljava/util/TimeZone;ZILjava/util/Locale;Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;)Ljava/lang/String;
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "k"    # Lcn/xutils/commons/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 1329
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private newCalendar()Ljava/util/Calendar;
    .locals 2

    .line 476
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 680
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 681
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->init()V

    .line 682
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 641
    instance-of v0, p1, Lcn/xutils/commons/time/FastDatePrinter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 642
    return v1

    .line 644
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/time/FastDatePrinter;

    .line 645
    .local v0, "other":Lcn/xutils/commons/time/FastDatePrinter;
    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    iget-object v3, v0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    .line 646
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    iget-object v3, v0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    .line 647
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 645
    :goto_0
    return v1
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .line 531
    .local p3, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 532
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 533
    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 552
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/Calendar;

    .line 554
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 556
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation

    .line 541
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 542
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 543
    invoke-direct {p0, v0, p2}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    return-object v1
.end method

.method public format(J)Ljava/lang/String;
    .locals 2
    .param p1, "millis"    # J

    .line 457
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 458
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 459
    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 440
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 441
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 443
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 444
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 446
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 447
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/time/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 449
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<null>"

    invoke-static {p1, v2}, Lcn/xutils/commons/ClassUtils;->getName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->maxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .line 484
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 485
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 486
    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .line 502
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 503
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 504
    invoke-direct {p0, v0, p3}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    return-object v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 421
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 424
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 426
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 427
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<null>"

    invoke-static {p1, v2}, Lcn/xutils/commons/ClassUtils;->getName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 512
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 513
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 514
    invoke-direct {p0, v0, p2}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuffer;

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 616
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 629
    iget v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->maxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 608
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 657
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/xutils/commons/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .line 186
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 187
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Lcn/xutils/commons/time/FastDatePrinter$Rule;>;"
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "ERAs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "months":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "shortMonths":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "weekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "AmPmStrings":[Ljava/lang/String;
    iget-object v9, v0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 197
    .local v9, "length":I
    const/4 v10, 0x1

    new-array v11, v10, [I

    .line 199
    .local v11, "indexRef":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_e

    .line 200
    const/4 v13, 0x0

    aput v12, v11, v13

    .line 201
    iget-object v14, v0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v14, v11}, Lcn/xutils/commons/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, "token":Ljava/lang/String;
    aget v12, v11, v13

    .line 204
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 205
    .local v15, "tokenLen":I
    if-nez v15, :cond_0

    .line 206
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_4

    .line 210
    :cond_0
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 212
    .local v10, "c":C
    const/4 v13, 0x2

    sparse-switch v10, :sswitch_data_0

    .line 322
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .local v16, "symbols":Ljava/text/DateFormatSymbols;
    .local v17, "weekdays":[Ljava/lang/String;
    .local v18, "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal pattern component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .restart local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_0
    const/4 v13, 0x4

    if-lt v15, v13, :cond_1

    .line 299
    new-instance v13, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v16, v1

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    iget-object v1, v0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v17, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    iget-object v6, v0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    move-object/from16 v18, v7

    const/4 v7, 0x1

    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    invoke-direct {v13, v1, v6, v7}, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    move-object v1, v13

    move-object v7, v1

    const/4 v1, 0x1

    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 301
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v6, v0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

    iget-object v7, v0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    const/4 v13, 0x0

    invoke-direct {v1, v6, v7, v13}, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 303
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 280
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 281
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 271
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;-><init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V

    .line 272
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 262
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 263
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 259
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 260
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 289
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_5
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TwentyFourHourField;

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lcn/xutils/commons/time/FastDatePrinter$TwentyFourHourField;-><init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V

    .line 290
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 253
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;-><init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V

    .line 254
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 250
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 251
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 286
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_8
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    const/16 v6, 0x9

    invoke-direct {v1, v6, v8}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 287
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 305
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v15, v1, :cond_2

    .line 306
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNumberRule;

    move-object v7, v1

    const/4 v1, 0x1

    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 307
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_2
    if-ne v15, v13, :cond_3

    .line 308
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lcn/xutils/commons/time/FastDatePrinter$Iso8601_Rule;

    move-object v7, v1

    const/4 v1, 0x1

    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 310
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_3
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNumberRule;

    .line 312
    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 218
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_a
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    if-ne v15, v13, :cond_4

    .line 219
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;

    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 221
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_4
    const/4 v1, 0x4

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 223
    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :goto_1
    const/16 v6, 0x59

    if-ne v10, v6, :cond_5

    .line 224
    new-instance v6, Lcn/xutils/commons/time/FastDatePrinter$WeekYear;

    move-object v7, v1

    check-cast v7, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-direct {v6, v7}, Lcn/xutils/commons/time/FastDatePrinter$WeekYear;-><init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V

    move-object v1, v6

    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 223
    :cond_5
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 295
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_b
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    invoke-static {v15}, Lcn/xutils/commons/time/FastDatePrinter$Iso8601_Rule;->getRule(I)Lcn/xutils/commons/time/FastDatePrinter$Iso8601_Rule;

    move-result-object v1

    .line 296
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 283
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_c
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 284
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 265
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_d
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 266
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 228
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_e
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    const/4 v1, 0x4

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    if-lt v15, v1, :cond_6

    .line 229
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    invoke-direct {v1, v13, v4}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v7, v1

    const/4 v1, 0x1

    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 230
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_6
    const/4 v1, 0x3

    if-ne v15, v1, :cond_7

    .line 231
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    invoke-direct {v1, v13, v5}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v7, v1

    const/4 v1, 0x1

    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 232
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_7
    if-ne v15, v13, :cond_8

    .line 233
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;

    move-object v7, v1

    const/4 v1, 0x1

    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 235
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_8
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;

    .line 237
    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 239
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_f
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x4

    if-lt v15, v1, :cond_9

    .line 240
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    iget-object v6, v0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    invoke-static {v6}, Lcn/xutils/commons/time/CalendarUtils;->getInstance(Ljava/util/Locale;)Lcn/xutils/commons/time/CalendarUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcn/xutils/commons/time/CalendarUtils;->getStandaloneLongMonthNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v13, v6}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v7, v1

    const/4 v1, 0x1

    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 241
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_9
    const/4 v1, 0x3

    if-ne v15, v1, :cond_a

    .line 242
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    iget-object v6, v0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    invoke-static {v6}, Lcn/xutils/commons/time/CalendarUtils;->getInstance(Ljava/util/Locale;)Lcn/xutils/commons/time/CalendarUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcn/xutils/commons/time/CalendarUtils;->getStandaloneShortMonthNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v13, v6}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v7, v1

    const/4 v1, 0x1

    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 243
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_a
    if-ne v15, v13, :cond_b

    .line 244
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;

    move-object v7, v1

    const/4 v1, 0x1

    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto/16 :goto_3

    .line 246
    .end local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_b
    sget-object v1, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;

    .line 248
    .restart local v1    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 292
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_10
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 293
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 256
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_11
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 257
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 214
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_12
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 215
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto :goto_3

    .line 277
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_13
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 278
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto :goto_3

    .line 268
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_14
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lcn/xutils/commons/time/FastDatePrinter$TextField;

    const/4 v6, 0x4

    if-ge v15, v6, :cond_c

    move-object/from16 v6, v18

    goto :goto_2

    :cond_c
    move-object/from16 v6, v17

    :goto_2
    const/4 v7, 0x7

    invoke-direct {v1, v7, v6}, Lcn/xutils/commons/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 269
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto :goto_3

    .line 274
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_15
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v15}, Lcn/xutils/commons/time/FastDatePrinter;->selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 275
    .local v1, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    move-object v7, v1

    const/4 v1, 0x1

    goto :goto_3

    .line 314
    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_16
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "sub":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_d

    .line 316
    new-instance v7, Lcn/xutils/commons/time/FastDatePrinter$CharacterLiteral;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-direct {v7, v13}, Lcn/xutils/commons/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    .local v7, "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    goto :goto_3

    .line 318
    .end local v7    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    :cond_d
    new-instance v7, Lcn/xutils/commons/time/FastDatePrinter$StringLiteral;

    invoke-direct {v7, v6}, Lcn/xutils/commons/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v7    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    nop

    .line 325
    .end local v6    # "sub":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v7    # "rule":Lcn/xutils/commons/time/FastDatePrinter$Rule;
    .end local v10    # "c":C
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "tokenLen":I
    add-int/lit8 v12, v12, 0x1

    move v10, v1

    move-object/from16 v1, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "weekdays":[Ljava/lang/String;
    .end local v18    # "shortWeekdays":[Ljava/lang/String;
    .restart local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .local v6, "weekdays":[Ljava/lang/String;
    .local v7, "shortWeekdays":[Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 328
    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "shortWeekdays":[Ljava/lang/String;
    :goto_4
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_16
        0x44 -> :sswitch_15
        0x45 -> :sswitch_14
        0x46 -> :sswitch_13
        0x47 -> :sswitch_12
        0x48 -> :sswitch_11
        0x4b -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x53 -> :sswitch_d
        0x57 -> :sswitch_c
        0x58 -> :sswitch_b
        0x59 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6b -> :sswitch_5
        0x6d -> :sswitch_4
        0x73 -> :sswitch_3
        0x75 -> :sswitch_2
        0x77 -> :sswitch_1
        0x79 -> :sswitch_a
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v2, p2, v1

    .line 342
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 344
    .local v3, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 345
    .local v4, "c":C
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_3

    if-gt v4, v7, :cond_3

    .line 348
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_a

    .line 351
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 352
    .local v5, "peek":C
    if-eq v5, v4, :cond_2

    .line 353
    goto :goto_4

    .line 355
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    nop

    .end local v5    # "peek":C
    add-int/lit8 v2, v2, 0x1

    .line 357
    goto :goto_0

    .line 360
    :cond_3
    const/16 v9, 0x27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    const/4 v10, 0x0

    .line 364
    .local v10, "inLiteral":Z
    :goto_1
    if-ge v2, v3, :cond_a

    .line 365
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 367
    const/4 v11, 0x1

    if-ne v4, v9, :cond_6

    .line 368
    add-int/lit8 v12, v2, 0x1

    if-ge v12, v3, :cond_4

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_4

    .line 370
    add-int/lit8 v2, v2, 0x1

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 373
    :cond_4
    if-nez v10, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    move v12, v1

    :goto_2
    move v10, v12

    goto :goto_3

    .line 375
    :cond_6
    if-nez v10, :cond_9

    if-lt v4, v6, :cond_7

    if-le v4, v5, :cond_8

    :cond_7
    if-lt v4, v8, :cond_9

    if-gt v4, v7, :cond_9

    .line 377
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 378
    goto :goto_4

    .line 380
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :goto_3
    add-int/2addr v2, v11

    goto :goto_1

    .line 385
    .end local v10    # "inLiteral":Z
    :cond_a
    :goto_4
    aput v2, p2, v1

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected selectNumberRule(II)Lcn/xutils/commons/time/FastDatePrinter$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .line 397
    packed-switch p2, :pswitch_data_0

    .line 403
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    return-object v0

    .line 401
    :pswitch_0
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    return-object v0

    .line 399
    :pswitch_1
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter;->timeZone:Ljava/util/TimeZone;

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
