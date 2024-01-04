.class Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;
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
    name = "UnpaddedNumberField"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput p1, p0, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;->field:I

    .line 930
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

    .line 953
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 954
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 955
    :cond_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 956
    invoke-static {p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendDigits(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 958
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendFullDigits(Ljava/lang/Appendable;II)V

    .line 960
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

    .line 945
    iget v0, p0, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;->field:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 946
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 937
    const/4 v0, 0x4

    return v0
.end method
