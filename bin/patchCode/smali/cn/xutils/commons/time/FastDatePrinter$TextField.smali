.class Lcn/xutils/commons/time/FastDatePrinter$TextField;
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
    name = "TextField"
.end annotation


# instance fields
.field private final field:I

.field private final values:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # I
    .param p2, "values"    # [Ljava/lang/String;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput p1, p0, Lcn/xutils/commons/time/FastDatePrinter$TextField;->field:I

    .line 890
    iput-object p2, p0, Lcn/xutils/commons/time/FastDatePrinter$TextField;->values:[Ljava/lang/String;

    .line 891
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcn/xutils/commons/time/FastDatePrinter$TextField;->values:[Ljava/lang/String;

    iget v1, p0, Lcn/xutils/commons/time/FastDatePrinter$TextField;->field:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 914
    return-void
.end method

.method public estimateLength()I
    .locals 3

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "max":I
    iget-object v1, p0, Lcn/xutils/commons/time/FastDatePrinter$TextField;->values:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 900
    iget-object v2, p0, Lcn/xutils/commons/time/FastDatePrinter$TextField;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 901
    .local v2, "len":I
    if-le v2, v0, :cond_0

    .line 902
    move v0, v2

    .line 904
    .end local v2    # "len":I
    :cond_0
    goto :goto_0

    .line 905
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
