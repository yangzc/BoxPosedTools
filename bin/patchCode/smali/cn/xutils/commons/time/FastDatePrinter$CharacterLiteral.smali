.class Lcn/xutils/commons/time/FastDatePrinter$CharacterLiteral;
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
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final value:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-char p1, p0, Lcn/xutils/commons/time/FastDatePrinter$CharacterLiteral;->value:C

    .line 822
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    iget-char v0, p0, Lcn/xutils/commons/time/FastDatePrinter$CharacterLiteral;->value:C

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 838
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 829
    const/4 v0, 0x1

    return v0
.end method
