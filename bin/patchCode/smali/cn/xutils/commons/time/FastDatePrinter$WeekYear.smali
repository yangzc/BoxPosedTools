.class Lcn/xutils/commons/time/FastDatePrinter$WeekYear;
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
    name = "WeekYear"
.end annotation


# instance fields
.field private final rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V
    .locals 0
    .param p1, "rule"    # Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput-object p1, p0, Lcn/xutils/commons/time/FastDatePrinter$WeekYear;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    .line 1295
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

    .line 1309
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$WeekYear;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1310
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$WeekYear;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-virtual {p2}, Ljava/util/Calendar;->getWeekYear()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1305
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1299
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$WeekYear;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
