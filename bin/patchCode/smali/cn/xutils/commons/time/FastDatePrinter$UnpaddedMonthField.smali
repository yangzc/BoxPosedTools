.class Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;
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
    name = "UnpaddedMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 967
    new-instance v0, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;

    invoke-direct {v0}, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;-><init>()V

    sput-object v0, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
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

    .line 997
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 998
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1000
    :cond_0
    invoke-static {p1, p2}, Lcn/xutils/commons/time/FastDatePrinter;->-$$Nest$smappendDigits(Ljava/lang/Appendable;I)V

    .line 1002
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

    .line 989
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/time/FastDatePrinter$UnpaddedMonthField;->appendTo(Ljava/lang/Appendable;I)V

    .line 990
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 981
    const/4 v0, 0x2

    return v0
.end method
