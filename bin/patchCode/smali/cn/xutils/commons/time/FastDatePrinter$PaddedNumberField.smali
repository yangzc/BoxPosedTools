.class Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;
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
    name = "PaddedNumberField"
.end annotation


# instance fields
.field private final field:I

.field private final size:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "size"    # I

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 1023
    iput p1, p0, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;->field:I

    .line 1024
    iput p2, p0, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;->size:I

    .line 1025
    return-void

    .line 1021
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
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

    .line 1048
    iget v0, p0, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;->size:I

    invoke-static {p1, p2, v0}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendFullDigits(Ljava/lang/Appendable;II)V

    .line 1049
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

    .line 1040
    iget v0, p0, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;->field:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1041
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1032
    iget v0, p0, Lcn/xutils/commons/time/FastDatePrinter$PaddedNumberField;->size:I

    return v0
.end method
