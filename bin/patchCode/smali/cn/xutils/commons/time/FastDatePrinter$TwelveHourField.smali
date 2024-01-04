.class Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;
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
    name = "TwelveHourField"
.end annotation


# instance fields
.field private final rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lcn/xutils/commons/time/FastDatePrinter$NumberRule;)V
    .locals 0
    .param p1, "rule"    # Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    iput-object p1, p0, Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    .line 1184
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

    .line 1211
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1212
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

    .line 1199
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1200
    .local v1, "value":I
    if-nez v1, :cond_0

    .line 1201
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1203
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, v1}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1204
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1191
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TwelveHourField;->rule:Lcn/xutils/commons/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lcn/xutils/commons/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
