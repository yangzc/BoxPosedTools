.class Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;
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
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput p1, p0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;->field:I

    .line 1065
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 1089
    invoke-static {p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendDigits(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 1091
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendFullDigits(Ljava/lang/Appendable;II)V

    .line 1093
    :goto_0
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

    .line 1080
    iget v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;->field:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1081
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1072
    const/4 v0, 0x2

    return v0
.end method
