.class Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;
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
    name = "TwoDigitYearField"
.end annotation


# static fields
.field static final INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1100
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;

    invoke-direct {v0}, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;-><init>()V

    sput-object v0, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
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

    .line 1129
    rem-int/lit8 v0, p2, 0x64

    invoke-static {p1, v0}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendDigits(Ljava/lang/Appendable;I)V

    .line 1130
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

    .line 1121
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$TwoDigitYearField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1122
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1113
    const/4 v0, 0x2

    return v0
.end method
