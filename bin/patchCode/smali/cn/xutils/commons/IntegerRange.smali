.class public final Lcn/xutils/commons/IntegerRange;
.super Lcn/xutils/commons/NumberRange;
.source "IntegerRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/NumberRange<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "number1"    # Ljava/lang/Integer;
    .param p2, "number2"    # Ljava/lang/Integer;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/NumberRange;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V

    .line 82
    return-void
.end method

.method public static of(II)Lcn/xutils/commons/IntegerRange;
    .locals 2
    .param p0, "fromInclusive"    # I
    .param p1, "toInclusive"    # I

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/IntegerRange;->of(Ljava/lang/Integer;Ljava/lang/Integer;)Lcn/xutils/commons/IntegerRange;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Integer;Ljava/lang/Integer;)Lcn/xutils/commons/IntegerRange;
    .locals 1
    .param p0, "fromInclusive"    # Ljava/lang/Integer;
    .param p1, "toInclusive"    # Ljava/lang/Integer;

    .line 69
    new-instance v0, Lcn/xutils/commons/IntegerRange;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/IntegerRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method
