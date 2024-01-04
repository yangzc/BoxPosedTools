.class Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;
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
    name = "TwoDigitMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1137
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;

    invoke-direct {v0}, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;-><init>()V

    sput-object v0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    invoke-static {p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendDigits(Ljava/lang/Appendable;I)V

    .line 1167
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitMonthField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1159
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1150
    const/4 v0, 0x2

    return v0
.end method
