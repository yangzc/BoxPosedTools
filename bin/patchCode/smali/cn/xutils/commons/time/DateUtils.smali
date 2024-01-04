.class public Lcn/xutils/commons/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/time/DateUtils$ModifyType;,
        Lcn/xutils/commons/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0xe

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xd

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0xc

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const/16 v5, 0xa

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/16 v1, 0x9

    const/4 v5, 0x5

    filled-new-array {v5, v5, v1}, [I

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/16 v1, 0x3e9

    filled-new-array {v4, v1}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    filled-new-array {v2}, [I

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcn/xutils/commons/time/DateUtils;->fields:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .line 488
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 490
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 491
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 492
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 422
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 435
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 474
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 448
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 396
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 461
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 409
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 383
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 860
    const-string v0, "calendar"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 861
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->CEILING:Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lcn/xutils/commons/time/DateUtils;->modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 882
    const-string v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 883
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 884
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 886
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 887
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 889
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find ceiling of for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 840
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->CEILING:Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lcn/xutils/commons/time/DateUtils;->modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J
    .locals 6
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1599
    const-string v0, "calendar"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1600
    const-wide/16 v0, 0x0

    .line 1601
    .local v0, "result":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1604
    .local v2, "offset":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1609
    :pswitch_0
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v2

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1610
    goto :goto_1

    .line 1606
    :pswitch_1
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v2

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1607
    nop

    .line 1615
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 1635
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1634
    :pswitch_3
    goto :goto_2

    .line 1623
    :pswitch_4
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1626
    :pswitch_5
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1629
    :pswitch_6
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1632
    :pswitch_7
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1633
    nop

    .line 1637
    :goto_2
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1581
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1582
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1583
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1584
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1566
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1375
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1526
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1337
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1413
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1223
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1488
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1299
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1450
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1261
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 183
    const-string v0, "cal1"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v0, "cal2"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 186
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 187
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    nop

    .line 185
    :goto_0
    return v0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 166
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/time/DateUtils;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 219
    const-string v0, "cal1"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const-string v0, "cal2"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 202
    const-string v0, "date1"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    const-string v0, "date2"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 237
    const-string v0, "cal1"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    const-string v0, "cal2"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 240
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 241
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 242
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 243
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 245
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    nop

    .line 239
    :goto_0
    return v2
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "calendar"    # Ljava/lang/Object;
    .param p1, "rangeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .line 1181
    const-string v0, "calendar"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1182
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 1183
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1185
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 1186
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1188
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .locals 9
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "rangeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Iterator<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 1093
    const-string v0, "calendar"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1096
    const/4 v0, 0x1

    .line 1097
    .local v0, "startCutoff":I
    const/4 v1, 0x7

    .line 1098
    .local v1, "endCutoff":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x7

    packed-switch p1, :pswitch_data_0

    .line 1141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The range style "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :pswitch_0
    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v7

    .line 1104
    .local v7, "start":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 1105
    .local v8, "end":Ljava/util/Calendar;
    invoke-virtual {v8, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 1106
    invoke-virtual {v8, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 1108
    const/4 v6, 0x6

    if-ne p1, v6, :cond_0

    .line 1109
    const/4 v0, 0x2

    .line 1110
    const/4 v1, 0x1

    goto :goto_0

    .line 1118
    .end local v7    # "start":Ljava/util/Calendar;
    .end local v8    # "end":Ljava/util/Calendar;
    :pswitch_1
    invoke-static {p0, v4}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v7

    .line 1119
    .restart local v7    # "start":Ljava/util/Calendar;
    invoke-static {p0, v4}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v8

    .line 1120
    .restart local v8    # "end":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_1

    .line 1137
    goto :goto_0

    .line 1133
    :pswitch_2
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v0, v6, -0x3

    .line 1134
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x3

    .line 1135
    goto :goto_0

    .line 1129
    :pswitch_3
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1130
    add-int/lit8 v1, v0, -0x1

    .line 1131
    goto :goto_0

    .line 1125
    :pswitch_4
    const/4 v0, 0x2

    .line 1126
    const/4 v1, 0x1

    .line 1127
    goto :goto_0

    .line 1123
    :pswitch_5
    nop

    .line 1143
    :cond_0
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1144
    add-int/lit8 v0, v0, 0x7

    .line 1146
    :cond_1
    if-le v0, v5, :cond_2

    .line 1147
    add-int/lit8 v0, v0, -0x7

    .line 1149
    :cond_2
    if-ge v1, v3, :cond_3

    .line 1150
    add-int/lit8 v1, v1, 0x7

    .line 1152
    :cond_3
    if-le v1, v5, :cond_4

    .line 1153
    add-int/lit8 v1, v1, -0x7

    .line 1155
    :cond_4
    :goto_1
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, v0, :cond_5

    .line 1156
    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 1158
    :cond_5
    :goto_2
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 1159
    invoke-virtual {v8, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1161
    :cond_6
    new-instance v2, Lcn/xutils/commons/time/DateUtils$DateIterator;

    invoke-direct {v2, v7, v8}, Lcn/xutils/commons/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .locals 1
    .param p0, "focus"    # Ljava/util/Date;
    .param p1, "rangeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/Iterator<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 1065
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;
    .locals 21
    .param p0, "val"    # Ljava/util/Calendar;
    .param p1, "field"    # I
    .param p2, "modType"    # Lcn/xutils/commons/time/DateUtils$ModifyType;

    .line 902
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x10b07600

    if-gt v4, v5, :cond_1c

    .line 906
    const/16 v4, 0xe

    if-ne v1, v4, :cond_0

    .line 907
    return-object v0

    .line 916
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 917
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 918
    .local v6, "time":J
    const/4 v8, 0x0

    .line 921
    .local v8, "done":Z
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 922
    .local v4, "millisecs":I
    sget-object v9, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    if-eq v9, v2, :cond_1

    const/16 v9, 0x1f4

    if-ge v4, v9, :cond_2

    .line 923
    :cond_1
    int-to-long v9, v4

    sub-long/2addr v6, v9

    .line 925
    :cond_2
    const/16 v9, 0xd

    if-ne v1, v9, :cond_3

    .line 926
    const/4 v8, 0x1

    .line 930
    :cond_3
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 931
    .local v9, "seconds":I
    const/16 v10, 0x1e

    if-nez v8, :cond_5

    sget-object v11, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    if-eq v11, v2, :cond_4

    if-ge v9, v10, :cond_5

    .line 932
    :cond_4
    int-to-long v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    sub-long/2addr v6, v11

    .line 934
    :cond_5
    const/16 v11, 0xc

    if-ne v1, v11, :cond_6

    .line 935
    const/4 v8, 0x1

    .line 939
    :cond_6
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 940
    .local v12, "minutes":I
    if-nez v8, :cond_8

    sget-object v13, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    if-eq v13, v2, :cond_7

    if-ge v12, v10, :cond_8

    .line 941
    :cond_7
    int-to-long v13, v12

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    sub-long/2addr v6, v13

    .line 945
    :cond_8
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v10, v13, v6

    if-eqz v10, :cond_9

    .line 946
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 947
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 951
    :cond_9
    const/4 v10, 0x0

    .line 952
    .local v10, "roundUp":Z
    sget-object v13, Lcn/xutils/commons/time/DateUtils;->fields:[[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_1b

    aget-object v11, v13, v15

    .line 953
    .local v11, "aField":[I
    array-length v3, v11

    move/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "millisecs":I
    .local v17, "millisecs":I
    :goto_1
    move-object/from16 v18, v5

    .end local v5    # "date":Ljava/util/Date;
    .local v18, "date":Ljava/util/Date;
    if-ge v4, v3, :cond_11

    aget v5, v11, v4

    .line 954
    .local v5, "element":I
    if-ne v5, v1, :cond_10

    .line 956
    sget-object v3, Lcn/xutils/commons/time/DateUtils$ModifyType;->CEILING:Lcn/xutils/commons/time/DateUtils$ModifyType;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcn/xutils/commons/time/DateUtils$ModifyType;->ROUND:Lcn/xutils/commons/time/DateUtils$ModifyType;

    if-ne v2, v3, :cond_f

    if-eqz v10, :cond_f

    .line 957
    :cond_a
    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_c

    .line 961
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_b

    .line 962
    const/16 v4, 0xf

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 964
    :cond_b
    const/16 v4, -0xf

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 965
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v13}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 968
    :cond_c
    const/16 v3, 0x9

    if-ne v1, v3, :cond_e

    .line 972
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_d

    .line 973
    const/16 v4, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 975
    :cond_d
    const/16 v4, -0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 976
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 982
    :cond_e
    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 985
    :cond_f
    :goto_2
    return-object v0

    .line 953
    .end local v5    # "element":I
    :cond_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v18

    goto :goto_1

    .line 989
    :cond_11
    const/4 v3, 0x0

    .line 990
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 992
    .local v4, "offsetSet":Z
    sparse-switch v1, :sswitch_data_0

    const/16 v5, 0xc

    goto :goto_7

    .line 994
    :sswitch_0
    const/4 v5, 0x0

    aget v2, v11, v5

    const/4 v5, 0x5

    if-ne v2, v5, :cond_14

    .line 998
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 1001
    .end local v3    # "offset":I
    .local v2, "offset":I
    const/16 v3, 0xf

    if-lt v2, v3, :cond_12

    .line 1002
    add-int/lit8 v2, v2, -0xf

    move v3, v2

    goto :goto_3

    .line 1001
    :cond_12
    move v3, v2

    .line 1005
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_3
    const/4 v2, 0x7

    if-le v3, v2, :cond_13

    move v2, v5

    goto :goto_4

    :cond_13
    const/4 v2, 0x0

    :goto_4
    move v10, v2

    .line 1006
    const/4 v4, 0x1

    const/16 v5, 0xc

    goto :goto_7

    .line 994
    :cond_14
    const/4 v5, 0x1

    const/16 v5, 0xc

    goto :goto_7

    .line 1010
    :sswitch_1
    const/4 v5, 0x1

    const/4 v2, 0x0

    aget v5, v11, v2

    const/16 v2, 0xb

    if-ne v5, v2, :cond_17

    .line 1013
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1014
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    const/16 v5, 0xc

    if-lt v2, v5, :cond_15

    .line 1015
    add-int/lit8 v2, v2, -0xc

    move v3, v2

    goto :goto_5

    .line 1014
    :cond_15
    move v3, v2

    .line 1017
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_5
    const/4 v2, 0x6

    if-lt v3, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_6

    :cond_16
    const/4 v2, 0x0

    :goto_6
    move v10, v2

    .line 1018
    const/4 v4, 0x1

    goto :goto_7

    .line 1010
    :cond_17
    const/16 v5, 0xc

    .line 1024
    :goto_7
    if-nez v4, :cond_19

    .line 1025
    const/4 v2, 0x0

    aget v5, v11, v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    .line 1026
    .local v5, "min":I
    move/from16 v19, v3

    .end local v3    # "offset":I
    .local v19, "offset":I
    aget v3, v11, v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 1028
    .local v3, "max":I
    move/from16 v20, v4

    .end local v4    # "offsetSet":Z
    .local v20, "offsetSet":Z
    aget v4, v11, v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v5

    .line 1030
    .end local v19    # "offset":I
    .restart local v2    # "offset":I
    sub-int v4, v3, v5

    const/16 v19, 0x2

    div-int/lit8 v4, v4, 0x2

    if-le v2, v4, :cond_18

    const/4 v4, 0x1

    goto :goto_8

    :cond_18
    const/4 v4, 0x0

    :goto_8
    move v3, v2

    move v10, v4

    .end local v10    # "roundUp":Z
    .local v4, "roundUp":Z
    goto :goto_9

    .line 1024
    .end local v2    # "offset":I
    .end local v5    # "min":I
    .end local v20    # "offsetSet":Z
    .local v3, "offset":I
    .local v4, "offsetSet":Z
    .restart local v10    # "roundUp":Z
    :cond_19
    move/from16 v19, v3

    move/from16 v20, v4

    .line 1033
    .end local v4    # "offsetSet":Z
    .restart local v20    # "offsetSet":Z
    :goto_9
    if-eqz v3, :cond_1a

    .line 1034
    const/4 v2, 0x0

    aget v4, v11, v2

    aget v5, v11, v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_a

    .line 1033
    :cond_1a
    const/4 v2, 0x0

    .line 952
    .end local v3    # "offset":I
    .end local v11    # "aField":[I
    .end local v20    # "offsetSet":Z
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v3, 0x1

    const/16 v11, 0xc

    goto/16 :goto_0

    .line 1037
    .end local v17    # "millisecs":I
    .end local v18    # "date":Ljava/util/Date;
    .local v4, "millisecs":I
    .local v5, "date":Ljava/util/Date;
    :cond_1b
    move/from16 v17, v4

    .end local v4    # "millisecs":I
    .restart local v17    # "millisecs":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "time":J
    .end local v8    # "done":Z
    .end local v9    # "seconds":I
    .end local v10    # "roundUp":Z
    .end local v12    # "minutes":I
    .end local v17    # "millisecs":I
    :cond_1c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Calendar value too large for accurate calculations"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .locals 11
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "parsePatterns"    # [Ljava/lang/String;
    .param p3, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 349
    const-string v0, "str"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    const-string v0, "parsePatterns"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 353
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-static {p1}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 354
    .local v1, "lcl":Ljava/util/Locale;
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 355
    .local v2, "pos":Ljava/text/ParsePosition;
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 356
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4, p3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 358
    array-length v5, p2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    .line 359
    .local v7, "parsePattern":Ljava/lang/String;
    new-instance v8, Lcn/xutils/commons/time/FastDateParser;

    invoke-direct {v8, v7, v0, v1}, Lcn/xutils/commons/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 360
    .local v8, "fdp":Lcn/xutils/commons/time/FastDateParser;
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 362
    :try_start_0
    invoke-virtual {v8, p0, v2, v4}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 363
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 367
    :cond_0
    goto :goto_1

    .line 365
    :catch_0
    move-exception v9

    .line 368
    :goto_1
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 358
    .end local v7    # "parsePattern":Ljava/lang/String;
    .end local v8    # "fdp":Lcn/xutils/commons/time/FastDateParser;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 370
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse the date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 714
    const-string v0, "calendar"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->ROUND:Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lcn/xutils/commons/time/DateUtils;->modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 747
    const-string v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 748
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 749
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 751
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 752
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 754
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 683
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->ROUND:Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lcn/xutils/commons/time/DateUtils;->modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .line 619
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 621
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 622
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 623
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 624
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 625
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 538
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 555
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 603
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 571
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 522
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 587
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 506
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 637
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 638
    .local v0, "c":Ljava/util/Calendar;
    const-string v1, "date"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 639
    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 650
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 651
    .local v0, "c":Ljava/util/Calendar;
    const-string v1, "date"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 652
    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 792
    const-string v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lcn/xutils/commons/time/DateUtils;->modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 813
    const-string v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 814
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 815
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 817
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 818
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 820
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 773
    invoke-static {p0}, Lcn/xutils/commons/time/DateUtils;->toCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p1, v1}, Lcn/xutils/commons/time/DateUtils;->modify(Ljava/util/Calendar;ILcn/xutils/commons/time/DateUtils$ModifyType;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 3
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .line 1689
    invoke-static {p0, p2}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1690
    .local v0, "truncatedCal1":Ljava/util/Calendar;
    invoke-static {p1, p2}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1691
    .local v1, "truncatedCal2":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    return v2
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .locals 3
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .line 1709
    invoke-static {p0, p2}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 1710
    .local v0, "truncatedDate1":Ljava/util/Date;
    invoke-static {p1, p2}, Lcn/xutils/commons/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    .line 1711
    .local v1, "truncatedDate2":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 1
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .line 1654
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .locals 1
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .line 1671
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static validateDateNotNull(Ljava/util/Date;)V
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 1719
    const-string v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1720
    return-void
.end method
