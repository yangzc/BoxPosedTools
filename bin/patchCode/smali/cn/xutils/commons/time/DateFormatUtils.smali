.class public Lcn/xutils/commons/time/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# static fields
.field public static final ISO_8601_EXTENDED_DATETIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_DATETIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_DATE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_TIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_TIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

.field public static final ISO_DATETIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_DATETIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_DATE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_DATE_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_NO_T_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SMTP_DATETIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    invoke-static {}, Lcn/xutils/commons/time/FastTimeZone;->getGmtTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 57
    nop

    .line 58
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_8601_EXTENDED_DATETIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 64
    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_DATETIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 76
    nop

    .line 77
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_8601_EXTENDED_DATETIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 83
    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_DATETIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 95
    nop

    .line 96
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_8601_EXTENDED_DATE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 102
    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_DATE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 117
    nop

    .line 118
    const-string v0, "yyyy-MM-ddZZ"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_DATE_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 132
    nop

    .line 133
    const-string v0, "\'T\'HH:mm:ss"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_TIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 147
    nop

    .line 148
    const-string v0, "\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_TIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 160
    nop

    .line 161
    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_8601_EXTENDED_TIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 167
    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_TIME_NO_T_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 179
    nop

    .line 180
    const-string v0, "HH:mm:ssZZ"

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_8601_EXTENDED_TIME_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 186
    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 197
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 198
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-static {v1, v0}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateFormatUtils;->SMTP_DATETIME_FORMAT:Lcn/xutils/commons/time/FastDateFormat;

    .line 197
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 337
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .line 349
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 362
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 220
    invoke-static {p0}, Lcn/xutils/commons/time/DateFormatUtils;->getTimeZone(Ljava/util/Calendar;)Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 235
    invoke-static {p0}, Lcn/xutils/commons/time/DateFormatUtils;->getTimeZone(Ljava/util/Calendar;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 249
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 264
    invoke-static {p1, p2, p3}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    .line 265
    .local v0, "df":Lcn/xutils/commons/time/FastDateFormat;
    invoke-virtual {v0, p0}, Lcn/xutils/commons/time/FastDateFormat;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 288
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 313
    invoke-static {p1, p2, p3}, Lcn/xutils/commons/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    .line 314
    .local v0, "df":Lcn/xutils/commons/time/FastDateFormat;
    invoke-virtual {v0, p0}, Lcn/xutils/commons/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatUTC(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lcn/xutils/commons/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 408
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lcn/xutils/commons/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {v0, p2, v1, p3}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 373
    sget-object v0, Lcn/xutils/commons/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 385
    sget-object v0, Lcn/xutils/commons/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeZone(Ljava/util/Calendar;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 412
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0
.end method
