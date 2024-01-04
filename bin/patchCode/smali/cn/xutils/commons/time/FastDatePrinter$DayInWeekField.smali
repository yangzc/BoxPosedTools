.class Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lcn/xutils/commons/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayInWeekField"
.end annotation


# instance fields
.field private final rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V
    .locals 0
    .param p1, "rule"    # Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput-object p1, p0, Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    .line 1268
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1284
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1278
    .local v1, "value":I
    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    :goto_0
    invoke-interface {v2, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1279
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1272
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$DayInWeekField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
