.class public Lcn/xutils/commons/time/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"

# interfaces
.implements Lcn/xutils/commons/time/DateParser;
.implements Lcn/xutils/commons/time/DatePrinter;


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cache:Lcn/xutils/commons/time/FormatCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/commons/time/FormatCache<",
            "Lcn/xutils/commons/time/FastDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final parser:Lcn/xutils/commons/time/FastDateParser;

.field private final printer:Lcn/xutils/commons/time/FastDatePrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcn/xutils/commons/time/FastDateFormat$1;

    invoke-direct {v0}, Lcn/xutils/commons/time/FastDateFormat$1;-><init>()V

    sput-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/xutils/commons/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 384
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;

    .line 396
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 397
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter;

    invoke-direct {v0, p1, p2, p3}, Lcn/xutils/commons/time/FastDatePrinter;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    .line 398
    new-instance v0, Lcn/xutils/commons/time/FastDateParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/xutils/commons/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->parser:Lcn/xutils/commons/time/FastDateParser;

    .line 399
    return-void
.end method

.method public static getDateInstance(I)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "style"    # I

    .line 197
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcn/xutils/commons/time/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .line 212
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcn/xutils/commons/time/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 228
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcn/xutils/commons/time/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 244
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lcn/xutils/commons/time/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(II)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 320
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcn/xutils/commons/time/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 336
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcn/xutils/commons/time/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 353
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 370
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/xutils/commons/time/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance()Lcn/xutils/commons/time/FastDateFormat;
    .locals 1

    .line 124
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FormatCache;->getInstance()Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 137
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcn/xutils/commons/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 166
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcn/xutils/commons/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 152
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcn/xutils/commons/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 183
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lcn/xutils/commons/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(I)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "style"    # I

    .line 258
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcn/xutils/commons/time/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .line 273
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcn/xutils/commons/time/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 289
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcn/xutils/commons/time/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 305
    sget-object v0, Lcn/xutils/commons/time/FastDateFormat;->cache:Lcn/xutils/commons/time/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lcn/xutils/commons/time/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    return-object v0
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 630
    instance-of v0, p1, Lcn/xutils/commons/time/FastDateFormat;

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/time/FastDateFormat;

    .line 635
    .local v0, "other":Lcn/xutils/commons/time/FastDateFormat;
    iget-object v1, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    iget-object v2, v0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v1, v2}, Lcn/xutils/commons/time/FastDatePrinter;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .line 508
    .local p3, "buf":Ljava/lang/Appendable;, "TB;"
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/time/FastDatePrinter;->format(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
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

    .line 536
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
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

    .line 522
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J

    .line 426
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 448
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 437
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 414
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 605
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDatePrinter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 618
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDatePrinter;->getMaxLengthEstimate()I

    move-result v0

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDatePrinter;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 595
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDatePrinter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDatePrinter;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->parser:Lcn/xutils/commons/time/FastDateParser;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 555
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->parser:Lcn/xutils/commons/time/FastDateParser;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "calendar"    # Ljava/util/Calendar;

    .line 564
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->parser:Lcn/xutils/commons/time/FastDateParser;

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 572
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateFormat;->parser:Lcn/xutils/commons/time/FastDateParser;

    invoke-virtual {v0, p1, p2}, Lcn/xutils/commons/time/FastDateParser;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v1}, Lcn/xutils/commons/time/FastDatePrinter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v2}, Lcn/xutils/commons/time/FastDatePrinter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateFormat;->printer:Lcn/xutils/commons/time/FastDatePrinter;

    invoke-virtual {v1}, Lcn/xutils/commons/time/FastDatePrinter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

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
