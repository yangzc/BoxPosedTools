.class Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lcn/xutils/commons/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneNameRule"
.end annotation


# instance fields
.field private final daylight:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private final standard:Ljava/lang/String;

.field private final style:I


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "style"    # I

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1349
    invoke-static {p2}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->locale:Ljava/util/Locale;

    .line 1350
    iput p3, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->style:I

    .line 1351
    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p2}, Lcn/xutils/commons/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->standard:Ljava/lang/String;

    .line 1352
    const/4 v0, 0x1

    invoke-static {p1, v0, p3, p2}, Lcn/xutils/commons/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->daylight:Ljava/lang/String;

    .line 1353
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1372
    .local v0, "zone":Ljava/util/TimeZone;
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    iget v1, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->style:I

    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcn/xutils/commons/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 1375
    :cond_0
    iget v1, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->style:I

    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcn/xutils/commons/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1377
    :goto_0
    return-void
.end method

.method public estimateLength()I
    .locals 2

    .line 1363
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->standard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter$TimeZoneNameRule;->daylight:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
